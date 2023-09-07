//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.238005, -3.246412, 0.000000, 31.904363, 7.830780, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {30.069643, 0.556323, 0.000000, 0.972671, 0.972671};
//+
c0 = 0.09726710263117942;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
