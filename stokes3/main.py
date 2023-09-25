import random
import os
import os.path as osp
from typing import List
import numpy as np
from alive_progress import alive_bar
import argparse
import pygmsh
import gmsh
from pygmsh.occ.dummy import Dummy

def too_close(
        x1: float,
        y1: float,
        z1: float,
        r1: float,
        x2: float,
        y2: float,
        z2: float,
        r2: float,
        margin: float
) -> bool:
    """Check if two circles are too close to each other."""
    if (np.linalg.norm(np.array([x2-x1, y2-y1, z2-z1])) < r1+r2+margin):
        return True
    return False

def too_close_list(
        x:float,
        y: float,
        z: float,
        r: float,
        c: List[List[float]],
        R: List[float],
        margin: float
) -> bool:
    """Check if a circle is too close to any other circle in a list."""
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
    """Check if a circle is outside the domain."""
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
    
def circles_distance_to_points(
        x: List[float],
        y: List[float],
        c: List[List[float]],
        R: List[float]
) -> List[float]:
    """Calculate the distance between a circle and a list of points."""
    d = []
    for i in range(len(x)):
        tmp = []
        for j in range(len(c)):
            tmp.append(np.linalg.norm(np.array([x[i]-c[j][0], y[i]-c[j][1]]))-R[j])
        d.append(min(tmp))
    return d

def mesh_size(
        L: float,
        H: float,
        x: List[float],
        y: List[float],
        c: List[List[float]],
        R: List[float]
) -> List[float]:
    """Calculate the mesh size for a point of the domain."""
    d_threshold = np.sqrt(L**2+H**2)/2
    d = circles_distance_to_points(x, y, c, R)
    l = []
    for i in range(len(d)):
        if (d[i] < d_threshold):
            # Larger mesh size for points further to the circles
            l.append(0.1*d[i])
        else:
            # Smaller mesh size for points closer to the circles
            l.append(0.2*d_threshold)
    return [l[0], l[0], l[3], l[3], l[1], l[1], l[2], l[2]] # Points order in GMSH

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
) -> tuple:
    """Create a list of circles with random positions and radius."""
    c = []
    R = []
    for i in range(n):
        # Randomly generate the position of the circles
        c_x = L*random.random()
        c_y = 2*H*random.random()-H
        c_z = 0.0
        r = (r_end-r_start)*random.random() + r_start
        if(i==0):
            while(outside(c_x, c_y, c_z, r, x_start, y_start, L, H, margin)):
                # If the first circle is outside the domain, generate a new one
                c_x = L*random.random()
                c_y = 2*H*random.random()-H
                c_z = 0.0
                r = (r_end-r_start)*random.random() + r_start
            c.append([c_x, c_y, c_z])
            R.append(r)
        else:
            while(outside(c_x, c_y, c_z, r, x_start, y_start, L, H, margin) or too_close_list(c_x, c_y, c_z, r, c, R, margin)):
                # If the other circles are outside the domain or too close to another circle, generate new ones
                c_x = L*random.random()
                c_y = 2*H*random.random()-H
                c_z = 0.0
                r = (r_end-r_start)*random.random() + r_start
            c.append([c_x, c_y, c_z])
            R.append(r)
    # Save the circles to a file
    os.makedirs(osp.join(wdir, 'circles'), exist_ok=True)
    with open(osp.join(wdir, 'circles', 'circle_{:03d}.txt'.format(index)), 'w') as f:
        f.write('{:f} {:f} {:f} {:f}\n'.format(x_start, y_start, L, H))
        for i in range(len(R)):
            f.write('{:f} {:f} {:f}\n'.format(c[i][0], c[i][1], R[i]))
    return c, R

def create_geo(
    x_start: float,
    y_start: float,
    L: float,
    H: float,
    c: List[List[float]],
    R: List[float],
    mesh_line_size: float,
    mesh_circle_size: float,
    index: int
)->None:
    with open(osp.join(os.getcwd(), 'geo', 'cad_{:03d}.geo'.format(index)), 'w') as geo:
        geo.write('//+\nMesh.MshFileVersion = 2.2;\n')
        geo.write('//+\nSetFactory("OpenCASCADE");\n')

        # Box domain
        geo.write('//+\nBox({:d}) = {{{:f}, {:f}, {:f}, {:f}, {:f}, {:f}}};\n'.format(1, x_start, -H+y_start, 0, L-x_start, 2*H, 1))
        for i in range(8):
            # Set mesh size for box points
            geo.write('//+\nMeshSize {{{:d}}} = {:f};\n'.format(i+1, mesh_line_size))

        # Cylinders
        for i in range(len(R)):
            geo.write('//+\nCylinder({:d}) = {{{:f}, {:f}, {:f}, {:f}, {:f}, {:f}, {:f}, {:s}}};\n'.format(2+i, c[i][0], c[i][1], 0, 0, 0, 1, R[i], "2*Pi"))
            for j in range(2):
                # Set mesh size for cylinder points
                geo.write('//+\nMeshSize {{{:d}}} = {:f};\n'.format(8+2*i+1+j, mesh_circle_size*R[i]))

        # Boolean difference of box and cylinders
        geo.write('//+\nBooleanDifference{ ')
        geo.write('Volume{{{:d}}}; Delete; '.format(1))
        geo.write('}{ ')
        for j in range(len(R)):
            geo.write('Volume{{{:d}}}; '.format(2+j))
        geo.write('Delete; }\n')

        geo.write('//+\nPhysical Surface("{:s}", {:d}) = {{{:d}}};\n'.format('INFLOW', 1, 1))
        geo.write('//+\nPhysical Surface("{:s}", {:d}) = {{{:d}}};\n'.format('OUTFLOW', 2, 6))

        geo.write('//+\nPhysical Surface("{:s}", {:d}) = '.format('OBSTACLE', 4))
        geo.write('{')
        for j in range(len(R)):
            if (j==len(R)-1):
                geo.write('{:d}'.format(7+j))
            else:
                geo.write('{:d}, '.format(7+j))
        geo.write('};\n')

        geo.write('//+\nPhysical Surface("{:s}", {:d}) = {{{:d}, {:d}}};\n'.format('WALL_Y', 31, 2, 4))
        geo.write('//+\nPhysical Surface("{:s}", {:d}) = {{{:d}, {:d}}};\n'.format('WALL_Z', 32, 3, 5))

        geo.write('//+\nPhysical Volume("{:s}", {:d}) = {{{:d}}};\n'.format('FLUID', 5, 1))

        geo.write('//+\nMesh 2;\n') # For vizualisation in GMSH only

        geo.write('//+\nSave "../geo_unrolled/cad_{:03d}.geo_unrolled";\n'.format(index)) # Save the unrolled geometry
        
def create_mesh(
    x_start: float,
    y_start: float,
    L: float,
    H: float,
    c: List[List[float]],
    R: List[float],
    mesh_line_size: float,
    mesh_circle_size: float,
    index: int
)->None:
    create_geo(x_start, y_start, L, H, c, R, mesh_line_size, mesh_circle_size, index)

    # Initialize empty geometry using the build in kernel in GMSH
    geometry = pygmsh.occ.geometry.Geometry()

    # Fetch model we would like to add data to
    model = geometry.__enter__()

    # Add box to model
    box = model.add_box([x_start, -H+y_start, 0], [L-x_start, 2*H, 1])
    model.synchronize()

    # Add cylinders to model
    cyl = []
    for j in range(len(R)):
        cyl.append(model.add_cylinder(x0=[c[j][0], c[j][1], 0], axis=[0, 0, 1], radius=R[j], angle=2*np.pi))
        model.synchronize()

    # Add boolean difference of box and cylinder to model
    vol = model.boolean_difference([box], cyl, delete_first=True, delete_other=True)
    model.synchronize()

    # Set mesh size for box points
    gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[0]], mesh_line_size)
    gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[1]], mesh_line_size)
    gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[2]], mesh_line_size)
    gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[3]], mesh_line_size)
    gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[5]], mesh_line_size) # 5 instead of 4 because of the boolean difference
    gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[4]], mesh_line_size) # 4 instead of 5 because of the boolean difference
    gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[6]], mesh_line_size)
    gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[7+len(cyl)]], mesh_line_size) # 7+len(cyl) instead of 7 because of the boolean difference
    
    for j in range(len(cyl)):
        gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[7+j]], mesh_circle_size*R[0])
        gmsh.model.mesh.setSize([gmsh.model.getEntities(0)[8+len(cyl)+j]], mesh_circle_size*R[0])

    # Set physical labels
    model.add_physical(vol, label='FLUID')
    model.add_physical(Dummy(gmsh.model.getEntities(2)[0][0], gmsh.model.getEntities(2)[0][1]), label='INFLOW')
    model.add_physical(Dummy(gmsh.model.getEntities(2)[6][0], gmsh.model.getEntities(2)[5][1]), label='OUTFLOW')
    model.add_physical([Dummy(gmsh.model.getEntities(2)[j][0], gmsh.model.getEntities(2)[j][1]) for j in [1,3]], label='WALL_Y')
    model.add_physical([Dummy(gmsh.model.getEntities(2)[j][0], gmsh.model.getEntities(2)[j][1]) for j in [2,4]], label='WALL_Z')
    model.add_physical([Dummy(gmsh.model.getEntities(2)[j][0], gmsh.model.getEntities(2)[j][1]) for j in range(6,6+len(cyl))], label='OBSTACLE')

    # Generate mesh
    geometry.generate_mesh(dim=3)

    gmsh.write(osp.join(os.getcwd(), 'mesh', 'cad_{:03d}.msh2'.format(index)))
    
    gmsh.clear()
    geometry.__exit__()

if __name__ == '__main__':
    random.seed(42)

    # Read arguments
    parser = argparse.ArgumentParser()
    parser.add_argument('-p', type=int, default=2, help='Number of holes in the domain')
    parser.add_argument('-n', type=int, default=500, help='Number of files to create for each number of holes')
    parser.add_argument('-r', type=float, nargs=2, default=[0.5, 1.5], help='Range of the radius of the holes')
    parser.add_argument('-L_ref', type=float, default=40.0, help='Reference length of the channel')
    parser.add_argument('-H_ref', type=float, default=5.0, help='Reference height of the channel')
    parser.add_argument('-m', type=float, default=0.5, help='Margin between the holes and the domain borders')
    parser.add_argument('-l', type=float, default=1.0, help='Mesh size of the lines')
    parser.add_argument('-c', type=float, default=0.1, help='Mesh size of the circles')
    args = parser.parse_args()

    wdir = osp.join(os.getcwd(), os.pardir)
    dir = os.getcwd()

    os.makedirs(osp.join(wdir, 'circles'), exist_ok=True)
    os.makedirs(osp.join(dir, 'geo'), exist_ok=True)
    os.makedirs(osp.join(dir, 'geo_unrolled'), exist_ok=True)
    os.makedirs(osp.join(dir, 'mesh'), exist_ok=True)

    with open("convert.geo", "w") as f:
        with alive_bar(total=args.n) as bar:
            for i in range(args.n):
                # Randomly generate the position of the channel
                x_start = random.random()
                y_start = random.random()
                L = args.L_ref*(0.25*random.random()+0.75)
                H = args.H_ref*(0.25*random.random()+0.75)

                # Randomly generate the position of the circles
                c, R = create_circles(wdir, args.p, x_start, y_start, L, H, args.r[0], args.r[1], args.m, i)
                create_mesh(x_start, y_start, L, H, c, R, args.l, args.c, i)    
                bar()

                # Write the convert.geo file
                f.write('//+\nMerge "{:s}";\n'.format(osp.join(dir, 'geo', 'cad_{:03d}.geo'.format(i))))
                f.write('//+\nDelete Model;\n')
        f.write('//+\nExit;\n')