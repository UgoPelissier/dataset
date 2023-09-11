//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.790721, -4.061603, 0.000000, 38.164294, 8.842265, 1.000000};
//+
MeshSize {1} = 3.920510;
//+
MeshSize {2} = 3.920510;
//+
MeshSize {3} = 1.247767;
//+
MeshSize {4} = 1.247767;
//+
MeshSize {5} = 1.459604;
//+
MeshSize {6} = 1.459604;
//+
MeshSize {7} = 1.247767;
//+
MeshSize {8} = 1.247767;
//+
Cylinder(2) = {25.616882, -1.282050, 0.000000, 0.000000, 0.000000, 1.000000, 1.147000, 2*Pi};
//+
MeshSize {9} = 0.114700;
//+
MeshSize {10} = 0.114700;
//+
Cylinder(3) = {15.567115, 2.234288, 0.000000, 0.000000, 0.000000, 1.000000, 1.465717, 2*Pi};
//+
MeshSize {11} = 0.146572;
//+
MeshSize {12} = 0.146572;
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
