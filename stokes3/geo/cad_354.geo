//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.330563, -3.232440, 0.000000, 31.217494, 7.884258, 1.000000};
//+
MeshSize {1} = 3.179340;
//+
MeshSize {2} = 3.179340;
//+
MeshSize {3} = 1.194733;
//+
MeshSize {4} = 1.194733;
//+
MeshSize {5} = 0.282916;
//+
MeshSize {6} = 0.282916;
//+
MeshSize {7} = 1.194733;
//+
MeshSize {8} = 1.194733;
//+
Cylinder(2) = {19.421258, 1.276384, 0.000000, 0.000000, 0.000000, 1.000000, 0.990551, 2*Pi};
//+
MeshSize {9} = 0.099055;
//+
MeshSize {10} = 0.099055;
//+
Cylinder(3) = {2.150835, 0.040528, 0.000000, 0.000000, 0.000000, 1.000000, 0.915931, 2*Pi};
//+
MeshSize {11} = 0.091593;
//+
MeshSize {12} = 0.091593;
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
