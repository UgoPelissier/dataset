//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.680606, -3.974764, 0.000000, 33.451676, 9.459471, 1.000000};
//+
MeshSize {1} = 1.496943;
//+
MeshSize {2} = 1.496943;
//+
MeshSize {3} = 1.496943;
//+
MeshSize {4} = 0.742047;
//+
MeshSize {5} = 0.742047;
//+
MeshSize {6} = 0.742047;
//+
MeshSize {7} = 1.682197;
//+
MeshSize {8} = 1.682197;
//+
Cylinder(2) = {16.467725, -1.227717, 0.000000, 0.000000, 0.000000, 1.000000, 1.054911, 2*Pi};
//+
MeshSize {9} = 0.105491;
//+
MeshSize {10} = 0.105491;
//+
Cylinder(3) = {8.662010, -1.828960, 0.000000, 0.000000, 0.000000, 1.000000, 0.844356, 2*Pi};
//+
MeshSize {11} = 0.084436;
//+
MeshSize {12} = 0.084436;
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
