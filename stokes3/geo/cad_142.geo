//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.451914, -3.789024, 0.000000, 37.865052, 7.691828, 1.000000};
//+
MeshSize {1} = 1.824352;
//+
MeshSize {2} = 1.824352;
//+
MeshSize {3} = 1.824352;
//+
MeshSize {4} = 1.815530;
//+
MeshSize {5} = 1.815530;
//+
MeshSize {6} = 1.815530;
//+
MeshSize {7} = 1.829244;
//+
MeshSize {8} = 1.829244;
//+
Cylinder(2) = {19.429300, -0.286815, 0.000000, 0.000000, 0.000000, 1.000000, 1.054316, 2*Pi};
//+
MeshSize {9} = 0.105432;
//+
MeshSize {10} = 0.105432;
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
