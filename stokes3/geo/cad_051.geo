//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.706419, -4.364035, 0.000000, 33.369575, 8.856528, 1.000000};
//+
MeshSize {1} = 1.265691;
//+
MeshSize {2} = 1.265691;
//+
MeshSize {3} = 1.265691;
//+
MeshSize {4} = 3.436252;
//+
MeshSize {5} = 3.436252;
//+
MeshSize {6} = 3.436252;
//+
MeshSize {7} = 3.436252;
//+
MeshSize {8} = 1.429382;
//+
Cylinder(2) = {14.167920, -2.596429, 0.000000, 0.000000, 0.000000, 1.000000, 0.920144, 2*Pi};
//+
MeshSize {9} = 0.092014;
//+
MeshSize {10} = 0.092014;
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
