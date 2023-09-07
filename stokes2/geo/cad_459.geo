//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.102932, -3.339784, 0.000000, 37.864646, 8.314674, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {24.658097, 2.431468, 0.000000, 1.032746, 1.032746};
//+
c0 = 0.10327455659283313;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.218031, -0.719702, 0.000000, 1.120875, 1.120875};
//+
c1 = 0.11208748388565411;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
