//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.945322, -3.214055, 0.000000, 37.934457, 7.777416, 1.000000};
//+
MeshSize {1} = 1.303424;
//+
MeshSize {2} = 1.303424;
//+
MeshSize {3} = 1.303424;
//+
MeshSize {4} = 0.635571;
//+
MeshSize {5} = 0.635571;
//+
MeshSize {6} = 0.635571;
//+
MeshSize {7} = 3.907377;
//+
MeshSize {8} = 3.907377;
//+
Cylinder(2) = {14.214092, 0.926550, 0.000000, 0.000000, 0.000000, 1.000000, 0.865571, 2*Pi};
//+
MeshSize {9} = 0.086557;
//+
MeshSize {10} = 0.086557;
//+
Cylinder(3) = {6.814358, 0.457238, 0.000000, 0.000000, 0.000000, 1.000000, 0.567006, 2*Pi};
//+
MeshSize {11} = 0.056701;
//+
MeshSize {12} = 0.056701;
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
