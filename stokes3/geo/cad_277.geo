//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.234144, -3.095873, 0.000000, 36.802837, 7.502716, 1.000000};
//+
MeshSize {1} = 0.554333;
//+
MeshSize {2} = 0.554333;
//+
MeshSize {3} = 1.200716;
//+
MeshSize {4} = 1.200716;
//+
MeshSize {5} = 0.554333;
//+
MeshSize {6} = 0.554333;
//+
MeshSize {7} = 3.722648;
//+
MeshSize {8} = 3.722648;
//+
Cylinder(2) = {5.290846, 0.228895, 0.000000, 0.000000, 0.000000, 1.000000, 0.508475, 2*Pi};
//+
MeshSize {9} = 0.050847;
//+
MeshSize {10} = 0.050847;
//+
Cylinder(3) = {24.074786, -0.449417, 0.000000, 0.000000, 0.000000, 1.000000, 1.222432, 2*Pi};
//+
MeshSize {11} = 0.122243;
//+
MeshSize {12} = 0.122243;
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
