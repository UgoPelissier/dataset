//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.957966, -3.543540, 0.000000, 29.544218, 8.122996, 0.000000};
//+
l = [3.077139880614952, 0.4317825368604342, 0.5461436447705981, 3.077139880614952];
//+
MeshSize {1} = 3.077140;
//+
MeshSize {2} = 0.431783;
//+
MeshSize {3} = 0.546144;
//+
MeshSize {4} = 3.077140;
//+
Disk(2) = {25.876111, -0.353660, 0.000000, 1.301417, 1.301417};
//+
c0 = 0.13014166017222648;
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
