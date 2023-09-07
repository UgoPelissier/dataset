//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179907, -4.364666, 0.000000, 36.905963, 9.948144, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {4.373378, 3.462648, 0.000000, 0.000000, 0.000000, 1.000000, 1.299564, 2*Pi};
//+
c0 = 0.12995643512555063;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {20.783497, 1.367905, 0.000000, 0.000000, 0.000000, 1.000000, 0.511297, 2*Pi};
//+
c1 = 0.05112972679780298;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
