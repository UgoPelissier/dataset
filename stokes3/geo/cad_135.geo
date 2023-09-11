//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.417694, -4.040787, 0.000000, 29.790872, 8.311920, 1.000000};
//+
MeshSize {1} = 3.049310;
//+
MeshSize {2} = 3.049310;
//+
MeshSize {3} = 0.649409;
//+
MeshSize {4} = 0.649409;
//+
MeshSize {5} = 0.649409;
//+
MeshSize {6} = 0.551200;
//+
MeshSize {7} = 0.551200;
//+
MeshSize {8} = 0.551200;
//+
Cylinder(2) = {24.206793, 0.981848, 0.000000, 0.000000, 0.000000, 1.000000, 1.332026, 2*Pi};
//+
MeshSize {9} = 0.133203;
//+
MeshSize {10} = 0.133203;
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
