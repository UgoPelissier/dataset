//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.101752, -3.285502, 0.000000, 31.767846, 8.314962, 1.000000};
//+
MeshSize {1} = 3.213963;
//+
MeshSize {2} = 3.213963;
//+
MeshSize {3} = 1.217208;
//+
MeshSize {4} = 1.217208;
//+
MeshSize {5} = 3.213963;
//+
MeshSize {6} = 3.213963;
//+
MeshSize {7} = 1.459639;
//+
MeshSize {8} = 1.459639;
//+
Cylinder(2) = {16.818066, 1.156683, 0.000000, 0.000000, 0.000000, 1.000000, 1.096971, 2*Pi};
//+
MeshSize {9} = 0.109697;
//+
MeshSize {10} = 0.109697;
//+
Cylinder(3) = {19.482154, 0.723441, 0.000000, 0.000000, 0.000000, 1.000000, 0.847925, 2*Pi};
//+
MeshSize {11} = 0.084792;
//+
MeshSize {12} = 0.084792;
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
