//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.276384, -4.285367, 0.000000, 38.757531, 9.424701, 1.000000};
//+
MeshSize {1} = 1.182221;
//+
MeshSize {2} = 1.182221;
//+
MeshSize {3} = 0.843097;
//+
MeshSize {4} = 0.843097;
//+
MeshSize {5} = 1.182221;
//+
MeshSize {6} = 1.182221;
//+
MeshSize {7} = 3.931733;
//+
MeshSize {8} = 3.931733;
//+
Cylinder(2) = {12.623729, -3.185869, 0.000000, 0.000000, 0.000000, 1.000000, 0.573997, 2*Pi};
//+
MeshSize {9} = 0.057400;
//+
MeshSize {10} = 0.057400;
//+
Cylinder(3) = {30.333488, -1.104584, 0.000000, 0.000000, 0.000000, 1.000000, 0.832655, 2*Pi};
//+
MeshSize {11} = 0.083265;
//+
MeshSize {12} = 0.083265;
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
