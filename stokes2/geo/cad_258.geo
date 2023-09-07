//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.790721, -4.061603, 0.000000, 38.164294, 8.842265, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {25.616882, -1.282050, 0.000000, 1.147000, 1.147000};
//+
c0 = 0.11469998479834043;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.567115, 2.234288, 0.000000, 1.465717, 1.465717};
//+
c1 = 0.14657167777138283;
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
