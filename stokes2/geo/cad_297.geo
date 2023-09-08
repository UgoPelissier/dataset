//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.042696, -4.006360, 0.000000, 31.637196, 8.934710, 0.000000};
//+
l = [3.199332470359902, 0.484609985441411, 0.5898964846106972, 0.5898964846106972, 0.7614653956787227, 0.7614653956787227, 3.199332470359902, 0.7682594159778063];
//+
MeshSize {1} = 3.199332;
//+
MeshSize {2} = 0.484610;
//+
MeshSize {3} = 0.589896;
//+
MeshSize {4} = 0.589896;
//+
Disk(2) = {26.030905, -0.938156, 0.000000, 0.529482, 0.529482};
//+
c0 = 0.052948229300029154;
//+
MeshSize {5} = c0;
//+
Disk(3) = {5.928927, -1.966936, 0.000000, 1.383424, 1.383424};
//+
c1 = 0.1383423798893626;
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
