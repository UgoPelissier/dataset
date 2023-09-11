//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.051620, -3.540031, 0.000000, 38.037338, 9.060793, 1.000000};
//+
MeshSize {1} = 3.835744;
//+
MeshSize {2} = 3.835744;
//+
MeshSize {3} = 0.522822;
//+
MeshSize {4} = 0.522822;
//+
MeshSize {5} = 1.211242;
//+
MeshSize {6} = 1.211242;
//+
MeshSize {7} = 0.522822;
//+
MeshSize {8} = 0.522822;
//+
Cylinder(2) = {32.430662, -2.012866, 0.000000, 0.000000, 0.000000, 1.000000, 0.632539, 2*Pi};
//+
MeshSize {9} = 0.063254;
//+
MeshSize {10} = 0.063254;
//+
Cylinder(3) = {10.701928, 3.242481, 0.000000, 0.000000, 0.000000, 1.000000, 0.514203, 2*Pi};
//+
MeshSize {11} = 0.051420;
//+
MeshSize {12} = 0.051420;
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
