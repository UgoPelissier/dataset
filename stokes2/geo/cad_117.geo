//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.778017, -3.866560, 0.000000, 30.312523, 8.759597, 0.000000};
//+
l = [3.139752087993432, 0.48335170145737205, 0.5306281110863091, 3.139752087993432];
//+
MeshSize {1} = 3.139752;
//+
MeshSize {2} = 0.483352;
//+
MeshSize {3} = 0.530628;
//+
MeshSize {4} = 3.139752;
//+
Disk(2) = {26.954905, 0.187904, 0.000000, 0.958043, 0.958043};
//+
c0 = 0.09580425220976821;
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
