//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.400778, -3.269834, 0.000000, 32.317553, 8.464289, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {27.832554, 2.538433, 0.000000, 1.148846, 1.148846};
//+
c0 = 0.1148846483872264;
//+
MeshSize {5} = c0;
//+
Disk(3) = {1.918812, 3.745168, 0.000000, 0.659395, 0.659395};
//+
c1 = 0.0659395397482165;
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
