//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.948520, -3.652778, 0.000000, 38.167256, 9.064983, 1.000000};
//+
MeshSize {1} = 1.469828;
//+
MeshSize {2} = 1.469828;
//+
MeshSize {3} = 1.520573;
//+
MeshSize {4} = 1.520573;
//+
MeshSize {5} = 3.937750;
//+
MeshSize {6} = 3.937750;
//+
MeshSize {7} = 3.937750;
//+
MeshSize {8} = 3.937750;
//+
Cylinder(2) = {16.710283, -0.039697, 0.000000, 0.000000, 0.000000, 1.000000, 1.472290, 2*Pi};
//+
MeshSize {9} = 0.147229;
//+
MeshSize {10} = 0.147229;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
