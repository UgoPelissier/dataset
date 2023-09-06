//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.472826, -3.472387, 0.000000, 32.648268, 8.307658, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {3.962925, 2.402108, 0.000000, 0.000000, 0.000000, 1.000000, 0.508930, 2*Pi};
//+
c0 = 0.050893;
//+
Cylinder(3) = {19.747203, -1.068376, 0.000000, 0.000000, 0.000000, 1.000000, 0.589480, 2*Pi};
//+
c1 = 0.058948;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_404.msh";