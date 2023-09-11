//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.532340, -4.060946, 0.000000, 32.465566, 9.539372, 1.000000};
//+
MeshSize {1} = 1.147361;
//+
MeshSize {2} = 1.147361;
//+
MeshSize {3} = 1.147361;
//+
MeshSize {4} = 3.334084;
//+
MeshSize {5} = 3.334084;
//+
MeshSize {6} = 3.334084;
//+
MeshSize {7} = 3.334084;
//+
MeshSize {8} = 1.075459;
//+
Cylinder(2) = {12.155036, 1.658004, 0.000000, 0.000000, 0.000000, 1.000000, 1.479898, 2*Pi};
//+
MeshSize {9} = 0.147990;
//+
MeshSize {10} = 0.147990;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
