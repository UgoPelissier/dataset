# Dataset creation

This file contains the instructions to generate the 3 datasets used in both MESHNET and GRAPHNET. The datasets are generated by solving the Stokes equation with a finite element method, using *FreeFem++* open-source software. The datasets are generated in 2d and 3d, with 2 or 3 velocity components and 1 pressure component. The datasets are generated on a rectangule or a box with one or two circular holes or cylinders. The mesh size is set constant on the edges of the rectangle of the domain, and is adapted on the edges of the circles or cylinders for the *stokes2* and *stokes3* datasets. For the *stokes3adapt* dataset, the mesh size is adapted on the edges of the box of the domain, so that the closer a node of the box is to a cylinder, the smaller the mesh size is.

The datasets are generated with the following parameters:
- *p*: number of holes in the domain
- *n*: number of files to generate
- *l*: mesh size of the lines
- *c*: mesh size of the circles

Alternatively, this repositery already contains the datasets in each associated folder, so that the user can directly use them without generating them.

## Stokes 2d

The `stokes2.sh` file contains the commands to generate the dataset. The `stokes2.sh` file can be run with the command:

```bash
bash ./stokes2.sh -p 2 -n 500 -l 1.0 -c 0.1
```

To get help on the parameters, run:

```bash
bash ./stokes2.sh -h
```

## Stokes 3d

The `stokes3.sh` file contains the commands to generate the dataset. The `stokes3.sh` file can be run with the command:

```bash
bash ./stokes3.sh -p 2 -n 500 -l 1.0 -c 0.1
```

To get help on the parameters, run:

```bash
bash ./stokes3.sh -h
```

## Stokes 3d adapt

The `stokes3adapt.sh` file contains the commands to generate the dataset. The `stokes3adapt.sh` file can be run with the command:

```bash
bash ./stokes3adapt.sh -p 2 -n 500 -l 1.0 -c 0.1
```

To get help on the parameters, run:

```bash
bash ./stokes3adapt.sh -h
```

## Dataset generation details

The dataset is generated by the following code:

```
cd stokes{2,3,3adapt}
python main.py
gmsh convert.geo
FreeFem++ stokes{2,3,3adapt}.edp
```

- The python file generates the CAD files (```geo/cad_*.geo``` files), the mesh files (```msh/cad_*.msh``` and ```mesh/cad_*.mesh``` files) and the script to convert them to more general CAD files (```convert.geo_unrolled``` file).
- The ```convert.geo``` file is read by *Gmsh* to generate ```geo/cad_*.geo_unrolled``` files
- The *FreeFem++* file reads the mesh, solves the Stokes equation and saves the solution in a ```vtu```.

The ```vtu``` file can be read by *Paraview* to visualize the solution.