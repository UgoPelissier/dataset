import os
import os.path as osp
from typing import List, Tuple
import numpy as np
import random
from alive_progress import alive_bar
import enum

import pygmsh
from pygmsh.common.point import Point
from pygmsh.common.line import Line
from pygmsh.common.curve_loop import CurveLoop
from pygmsh.geo.geometry import Circle
from pygmsh.common.plane_surface import PlaneSurface
import gmsh


class NodeType(enum.IntEnum):
    """
    Define the code for the one-hot vector representing the node types.
    Note that this is consistent with the codes provided in the original
    MeshGraphNets study: 
    https://github.com/deepmind/deepmind-research/tree/master/meshgraphnets
    """
    NORMAL = 0
    INFLOW = 1
    OUTFLOW = 2
    WALL_BOUNDARY = 3
    OBSTACLE = 4
    SIZE = 5


def too_close(x1: float, y1: float, z1: float, r1: float, x2: float, y2: float, z2: float, r2: float, margin: float) -> bool:
    if (np.linalg.norm(np.array([x2-x1, y2-y1, z2-z1])) < r1+r2+margin):
        return True
    return False

def too_close_list(x:float, y: float, z: float, r: float, c: List[List[float]], R: List[float], margin: float) -> bool:
    for i in range(len(R)):
        if too_close(x, y, z, r, c[i][0], c[i][1], c[i][2], R[i], margin):
            return True
    return False

def outside(
        x: float,
        y:float,
        z: float,
        r: float,
        x_start: float,
        y_start: float,
        L: float,
        H: float,
        margin: float
    ) -> bool:
    if (x-r-margin < x_start):
        return True
    elif (y-r-margin < y_start-H):
        return True
    elif (x+r+margin > L):
        return True
    elif (y+r+margin > y_start+H):
        return True
    else:
        return False
    
def create_circles(
        wdir: str,
        n: int,
        x_start: float,
        y_start: float,
        L: float,
        H: float,
        r_start: float,
        r_end: float,
        margin: float,
        index: int
    ) -> Tuple[List[List[float]], List[float]]:
    c = []
    R = []
    for i in range(n):
        c_x = L*random.random()
        c_y = 2*H*random.random()-H
        c_z = 0.0
        r = (r_end-r_start)*random.random() + r_start
        if(i==0):
            while(outside(c_x, c_y, c_z, r, x_start, y_start, L, H, margin)):
                c_x = L*random.random()
                c_y = 2*H*random.random()-H
                c_z = 0.0
                r = (r_end-r_start)*random.random() + r_start
            c.append([c_x, c_y, c_z])
            R.append(r)
        else:
            while(outside(c_x, c_y, c_z, r, x_start, y_start, L, H, margin) or too_close_list(c_x, c_y, c_z, r, c, R, margin)):
                c_x = L*random.random()
                c_y = 2*H*random.random()-H
                c_z = 0.0
                r = (r_end-r_start)*random.random() + r_start
            c.append([c_x, c_y, c_z])
            R.append(r)
    os.makedirs(osp.join(wdir, 'circles'), exist_ok=True)
    with open(osp.join(wdir, 'circles', 'circle_{:03d}.txt'.format(index)), 'w') as f:
        f.write('{:f} {:f} {:f} {:f}\n'.format(x_start, y_start, L, H))
        for i in range(len(R)):
            f.write('{:f} {:f} {:f}\n'.format(c[i][0], c[i][1], R[i]))
    return c, R

def write_geo(
        dir: str,
        index: int,
        points: List[Point],
        lines: List[Line],
        curve: CurveLoop,
        circles: List[Circle],
        plane_surface: PlaneSurface,
        physical_curves: List
) -> None:
    os.makedirs(osp.join(dir, 'geo'), exist_ok=True)
    with open(osp.join(dir, 'geo', 'cad_{:03d}.geo'.format(index)), 'w') as geo:
        points_id = []
        geo.write(f'//+\nSetFactory("OpenCASCADE");\n')

        for point in points:
            geo.write('//+\nPoint({:d}) = {{{:f}, {:f}, {:f}, {:f}}};\n'.format(point._id, point.x[0], point.x[1], point.x[2], point.mesh_size))
            points_id.append(point._id)

        for line in lines:
            geo.write('//+\nLine({:d}) = {{{:d}, {:d}}};\n'.format(line._id, line.points[0]._id, line.points[1]._id))

        geo.write('//+\nCurve Loop({:d}) = {{{:d}, {:d}, {:d}, {:d}}};\n'.format(curve._id, curve.curves[0]._id, curve.curves[1]._id, curve.curves[2]._id, curve.curves[3]._id))

        for circle in circles:
            for arc_circle in circle.curve_loop.curves:
                for point in arc_circle.points:
                    if point._id not in points_id:
                        geo.write('//+\nPoint({:d}) = {{{:f}, {:f}, {:f}, {:f}}};\n'.format(point._id, point.x[0], point.x[1], point.x[2], point.mesh_size))
                        points_id.append(point._id)

        for circle in circles:
            for arc_circle in circle.curve_loop.curves:
                geo.write('//+\nEllipse({:d}) = {{{:d}, {:d}, {:d}, {:d}}};\n'.format(arc_circle._id, arc_circle.points[0]._id, arc_circle.points[1]._id, arc_circle.points[2]._id, arc_circle.points[2]._id))
            geo.write('//+\nCurve Loop({:d}) = {{{:d}, {:d}, {:d}}};\n'.format(circle.curve_loop._id, circle.curve_loop.curves[0]._id, circle.curve_loop.curves[1]._id, circle.curve_loop.curves[2]._id))

        geo.write('//+\nPlane Surface({:d}) = '.format(plane_surface._id))
        geo.write('{')
        geo.write('{:d}, {:d}'.format(plane_surface.curve_loop._id, plane_surface.holes[0]._id))
        for hole in plane_surface.holes[1:]:
            geo.write(', {:d}'.format(hole._id))
        geo.write('};\n')

        id = 100
        for physical_curve in physical_curves:
            curve = physical_curve[0]
            label = physical_curve[1]
            geo.write('//+\nPhysical Curve("{:s}", {:d}) = '.format(label, id))
            geo.write('{')
            geo.write('{:d}'.format(curve[0]._id))
            for c in curve[1:]:
                geo.write(', {:d}'.format(c._id))
            geo.write('};\n')
            id+=1
            

def create_mesh(
        dir: str,
        x_start: float,
        y_start: float,
        L: float,
        H: float,
        c: List[List[float]],
        R: List[float],
        mesh_line_size: float,
        mesh_circle_size: float,
        index: int
) -> None:
    # Initialize empty geometry using the build in kernel in GMSH
    geometry = pygmsh.geo.Geometry()
    # Fetch model we would like to add data to
    model = geometry.__enter__()

    # Add points
    points = [model.add_point(x=(x_start, y_start-H, 0), mesh_size=mesh_line_size),
            model.add_point(x=(x_start+L, y_start-H, 0), mesh_size=mesh_line_size),
            model.add_point(x=(x_start+L, y_start+H, 0), mesh_size=mesh_line_size),
            model.add_point(x=(x_start, y_start+H, 0), mesh_size=mesh_line_size)]

    # Add lines between all points creating the rectangle
    channel_lines = [model.add_line(p0=points[i], p1=points[i+1]) for i in range(-1, len(points)-1)]

    # Create a line loop
    channel_loop = model.add_curve_loop(curves=channel_lines)

    # Add circle
    circles = []
    holes = []
    curves = []
    for i in range(len(R)):
        circle = model.add_circle(x0=c[i], radius=R[i], mesh_size=R[i]*mesh_circle_size)
        circles.append(circle)
        holes.append(circle.curve_loop)
        for curve in circle.curve_loop.curves:
            curves.append(curve)

    # Create a plane surface for meshing
    plane_surface = model.add_plane_surface(curve_loop=channel_loop, holes=holes)

    # Call gmsh kernel before add physical entities
    model.synchronize()

    model.add_physical(entities=[plane_surface], label="VOLUME")
    model.add_physical(entities=[channel_lines[0]], label="INFLOW")
    model.add_physical(entities=[channel_lines[2]], label="OUTFLOW")
    model.add_physical(entities=[channel_lines[1], channel_lines[3]], label="WALL_BOUNDARY")
    model.add_physical(entities=curves, label="OBSTACLE")

    write_geo(dir, index, points, channel_lines, channel_loop, circles, plane_surface, model._PHYSICAL_QUEUE[1:])

    geometry.generate_mesh(dim=2)
    
    gmsh.clear()
    geometry.__exit__()

if __name__ == '__main__':
    random.seed(42)

    wdir = osp.join(os.getcwd(), os.pardir)
    dir = os.getcwd()
    
    # Channel parameters
    m = 2
    n = 250
    L_ref = 40.0
    H_ref = 5.0
    r_start = 0.5
    r_end = 1.5
    margin = 0.5
    mesh_line_size = 1.0
    mesh_circle_size = 0.1

    with alive_bar(total=m*n) as bar:
        for i in range(m):
            for j in range(n):
                x_start = random.random()
                y_start = random.random()
                L = L_ref*(0.25*random.random()+0.75)
                H = H_ref*(0.25*random.random()+0.75)
                c, R = create_circles(wdir, (i+1), x_start, y_start, L, H, r_start, r_end, margin, i*n+j)
                create_mesh(dir, x_start, y_start, L, H, c, R, mesh_line_size, mesh_circle_size, i*n+j)
                bar()