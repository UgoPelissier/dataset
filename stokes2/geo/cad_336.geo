//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.400778, -3.269834, 0.000000, 32.317553, 8.464289, 0.000000};
//+
l = [3.299091122226375, 0.6517978293643785, 0.6441066524042358, 0.6441066524042358, 0.44122024924850367, 0.44122024924850367, 3.299091122226375, 0.1439380203938183];
//+
MeshSize {1} = 3.299091;
//+
MeshSize {2} = 0.651798;
//+
MeshSize {3} = 0.644107;
//+
MeshSize {4} = 0.644107;
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
