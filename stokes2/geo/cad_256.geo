//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.953005, -3.836446, 0.000000, 36.130666, 8.596137, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {10.803631, 1.657639, 0.000000, 1.318966, 1.318966};
//+
c0 = 0.13189655680044585;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.505876, -0.781031, 0.000000, 0.999303, 0.999303};
//+
c1 = 0.09993032152889603;
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
