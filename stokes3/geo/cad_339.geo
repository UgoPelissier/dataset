//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.661713, -4.346792, 0.000000, 32.795782, 9.190739, 1.000000};
//+
MeshSize {1} = 1.325620;
//+
MeshSize {2} = 1.325620;
//+
MeshSize {3} = 3.377161;
//+
MeshSize {4} = 3.377161;
//+
MeshSize {5} = 0.793855;
//+
MeshSize {6} = 0.793855;
//+
MeshSize {7} = 3.377161;
//+
MeshSize {8} = 3.377161;
//+
Cylinder(2) = {12.877007, 3.115964, 0.000000, 0.000000, 0.000000, 1.000000, 1.058344, 2*Pi};
//+
MeshSize {9} = 0.105834;
//+
MeshSize {10} = 0.105834;
//+
Cylinder(3) = {7.451202, 1.317192, 0.000000, 0.000000, 0.000000, 1.000000, 0.903277, 2*Pi};
//+
MeshSize {11} = 0.090328;
//+
MeshSize {12} = 0.090328;
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
