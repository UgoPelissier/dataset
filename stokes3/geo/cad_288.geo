//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.327301, -3.447748, 0.000000, 29.752391, 8.001678, 1.000000};
//+
MeshSize {1} = 3.034460;
//+
MeshSize {2} = 3.034460;
//+
MeshSize {3} = 1.326119;
//+
MeshSize {4} = 1.326119;
//+
MeshSize {5} = 1.326119;
//+
MeshSize {6} = 1.213166;
//+
MeshSize {7} = 1.213166;
//+
MeshSize {8} = 1.213166;
//+
Cylinder(2) = {16.959133, -1.569055, 0.000000, 0.000000, 0.000000, 1.000000, 1.122718, 2*Pi};
//+
MeshSize {9} = 0.112272;
//+
MeshSize {10} = 0.112272;
//+
Cylinder(3) = {13.954772, 0.733681, 0.000000, 0.000000, 0.000000, 1.000000, 0.993361, 2*Pi};
//+
MeshSize {11} = 0.099336;
//+
MeshSize {12} = 0.099336;
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
