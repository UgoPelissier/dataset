//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.102932, -3.339784, 0.000000, 37.864646, 8.314674, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {24.658097, 2.431468, 0.000000, 0.000000, 0.000000, 1.000000, 1.032746, 2*Pi};
//+
c0 = 0.10327455659283313;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {15.218031, -0.719702, 0.000000, 0.000000, 0.000000, 1.000000, 1.120875, 2*Pi};
//+
c1 = 0.11208748388565411;
//+
MeshSize {11, 12} = c1;
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
Mesh 2;
