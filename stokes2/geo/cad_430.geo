//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.880132, -3.889715, 0.000000, 33.232386, 8.607511, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {9.339876, 2.402424, 0.000000, 0.606771, 0.606771};
//+
c0 = 0.06067714328434011;
//+
MeshSize {5} = c0;
//+
Disk(3) = {6.302168, 2.259020, 0.000000, 1.111982, 1.111982};
//+
c1 = 0.11119815976690242;
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
