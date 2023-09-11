//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.370705, -3.612662, 0.000000, 35.254542, 8.053185, 1.000000};
//+
MeshSize {1} = 3.585208;
//+
MeshSize {2} = 3.585208;
//+
MeshSize {3} = 3.585208;
//+
MeshSize {4} = 3.585208;
//+
MeshSize {5} = 1.462797;
//+
MeshSize {6} = 1.462797;
//+
MeshSize {7} = 1.518577;
//+
MeshSize {8} = 1.518577;
//+
Cylinder(2) = {20.632110, -0.663759, 0.000000, 0.000000, 0.000000, 1.000000, 0.652411, 2*Pi};
//+
MeshSize {9} = 0.065241;
//+
MeshSize {10} = 0.065241;
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
