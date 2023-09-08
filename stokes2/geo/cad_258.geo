//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.790721, -4.061603, 0.000000, 38.164294, 8.842265, 0.000000};
//+
l = [3.9205096837605113, 1.4596041438547849, 1.2477672905120176, 1.2477672905120176, 1.3504357666497397, 1.3504357666497397, 3.9205096837605113, 1.3528477191347485];
//+
MeshSize {1} = 3.920510;
//+
MeshSize {2} = 1.459604;
//+
MeshSize {3} = 1.247767;
//+
MeshSize {4} = 1.247767;
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
