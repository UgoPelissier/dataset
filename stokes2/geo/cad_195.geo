//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.532340, -4.060946, 0.000000, 32.465566, 9.539372, 0.000000};
//+
l = [1.147361354804009, 3.334084105189923, 3.334084105189923, 1.0754589961111714];
//+
MeshSize {1} = 1.147361;
//+
MeshSize {2} = 3.334084;
//+
MeshSize {3} = 3.334084;
//+
MeshSize {4} = 1.075459;
//+
Disk(2) = {12.155036, 1.658004, 0.000000, 1.479898, 1.479898};
//+
c0 = 0.14798980311791618;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
