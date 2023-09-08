//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.235521, -3.373676, 0.000000, 39.304827, 8.254865, 0.000000};
//+
l = [1.1172495790299997, 3.9755186268770872, 3.9755186268770872, 1.2171912755520073];
//+
MeshSize {1} = 1.117250;
//+
MeshSize {2} = 3.975519;
//+
MeshSize {3} = 3.975519;
//+
MeshSize {4} = 1.217191;
//+
Disk(2) = {12.131230, -0.780773, 0.000000, 1.002520, 1.002520};
//+
c0 = 0.10025204712383898;
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
