import os
import os.path as osp
import numpy as np
from alive_progress import alive_bar

# Number of circles
n = 500
wdir = osp.join(os.getcwd(), os.pardir)

os.makedirs(osp.join(os.getcwd(), 'geo'), exist_ok=True)

with alive_bar(total=n) as bar:
    for i in range(n):
        with open(osp.join(wdir, 'circles', 'circle_{:03d}.txt'.format(i)), 'r') as f:
            lines = f.readlines()
            lines = np.array([line.strip() for line in lines])

            coo = lines[0].split(' ')
            xstart, ystart, L, H = float(coo[0]), float(coo[1]), float(coo[2]), float(coo[3])

            circles = np.array([[float(lines[j].split(' ')[k]) for k in range(len(lines[j].split(' ')))] for j in range(1, len(lines))])
            c, R = circles[:,:2], circles[:,-1]

            with open(osp.join(os.getcwd(), 'geo', 'cad_{:03d}.geo'.format(i)), 'w') as geo:
                geo.write('//+\nMesh.MshFileVersion = 2.2;\n')
                geo.write('//+\nSetFactory("OpenCASCADE");\n')
                geo.write('//+\nBox({:d}) = {{{:f}, {:f}, {:f}, {:f}, {:f}, {:f}}};\n'.format(1, xstart, -H+ystart, 0, L-xstart, 2*H, 1))
                for j in range(len(lines)-1):
                    geo.write('//+\nCylinder({:d}) = {{{:f}, {:f}, {:f}, {:f}, {:f}, {:f}, {:f}, {:s}}};\n'.format(2+j, c[j,0], c[j,1], 0, 0, 0, 1, R[j], "2*Pi"))

                geo.write('//+\nBooleanDifference{ ')
                geo.write('Volume{{{:d}}}; Delete; '.format(1))
                geo.write('}{ ')
                for j in range(len(lines)-1):
                    geo.write('Volume{{{:d}}}; '.format(2+j))
                geo.write('Delete; }\n')

                geo.write('//+\nPhysical Surface("{:s}", {:d}) = {{{:d}}};\n'.format('INFLOW', 1, 1))
                geo.write('//+\nPhysical Surface("{:s}", {:d}) = {{{:d}}};\n'.format('OUTFLOW', 2, 6))

                geo.write('//+\nPhysical Surface("{:s}", {:d}) = '.format('OBSTACLE', 4))
                geo.write('{')
                for j in range(len(lines)-1):
                    if (j==len(lines)-2):
                        geo.write('{:d}'.format(7+j))
                    else:
                        geo.write('{:d}, '.format(7+j))
                geo.write('};\n')

                geo.write('//+\nPhysical Surface("{:s}", {:d}) = {{{:d}, {:d}}};\n'.format('WALL_Y', 31, 2, 4))
                geo.write('//+\nPhysical Surface("{:s}", {:d}) = {{{:d}, {:d}}};\n'.format('WALL_z', 32, 3, 5))

                geo.write('//+\nPhysical Volume("{:s}", {:d}) = {{{:d}}};\n'.format('FLUID', 5, 1))

                geo.write('//+\nMesh 1;\n')
                geo.write('//+\nRefineMesh;\n')
                geo.write('//+\nRefineMesh;\n')
                geo.write('//+\nMesh 3;\n')
                geo.write('//+\nSave "cad_{:03d}.msh";\n'.format(i))
                
        bar()