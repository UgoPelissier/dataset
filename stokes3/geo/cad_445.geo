//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179907, -4.364666, 0.000000, 36.905963, 9.948144, 1.000000};
//+
MeshSize {1} = 0.758030;
//+
MeshSize {2} = 0.758030;
//+
MeshSize {3} = 0.758030;
//+
MeshSize {4} = 0.758030;
//+
MeshSize {5} = 0.758030;
//+
MeshSize {6} = 0.758030;
//+
MeshSize {7} = 3.741795;
//+
MeshSize {8} = 3.741795;
//+
Cylinder(2) = {4.373378, 3.462648, 0.000000, 0.000000, 0.000000, 1.000000, 1.299564, 2*Pi};
//+
MeshSize {9} = 0.129956;
//+
MeshSize {10} = 0.129956;
//+
Cylinder(3) = {20.783497, 1.367905, 0.000000, 0.000000, 0.000000, 1.000000, 0.511297, 2*Pi};
//+
MeshSize {11} = 0.051130;
//+
MeshSize {12} = 0.051130;
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
