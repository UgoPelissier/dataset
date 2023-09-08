//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.238005, -3.246412, 0.000000, 31.904363, 7.830780, 0.000000};
//+
l = [3.237996452680022, 0.33582620430045107, 0.35573768487543933, 3.237996452680022];
//+
MeshSize {1} = 3.237996;
//+
MeshSize {2} = 0.335826;
//+
MeshSize {3} = 0.355738;
//+
MeshSize {4} = 3.237996;
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
