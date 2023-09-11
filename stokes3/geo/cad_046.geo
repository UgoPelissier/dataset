//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.957966, -3.543540, 0.000000, 29.544218, 8.122996, 1.000000};
//+
l = [3.077139880614952, 3.077139880614952, 0.4317825368604342, 0.4317825368604342, 0.4317825368604342, 0.5461436447705981, 0.5461436447705981, 0.5461436447705981, 3.077139880614952, 3.077139880614952];
//+
MeshSize {1} = 3.077140;
//+
MeshSize {2} = 3.077140;
//+
MeshSize {3} = 0.431783;
//+
MeshSize {4} = 0.431783;
//+
MeshSize {5} = 0.431783;
//+
MeshSize {6} = 0.546144;
//+
MeshSize {7} = 0.546144;
//+
MeshSize {8} = 0.546144;
//+
Cylinder(2) = {25.876111, -0.353660, 0.000000, 0.000000, 0.000000, 1.000000, 1.301417, 2*Pi};
//+
c0 = 0.13014166017222648;
//+
MeshSize {9, 10} = c0;
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
