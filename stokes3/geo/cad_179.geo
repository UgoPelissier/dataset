//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.823339, -4.479173, 0.000000, 38.900458, 9.105846, 1.000000};
//+
l = [1.727159880037943, 1.727159880037943, 1.727159880037943, 3.998386153354527, 3.998386153354527, 3.998386153354527, 3.998386153354527, 1.6466426961100744, 1.6466426961100744, 1.6466426961100744];
//+
MeshSize {1} = 1.727160;
//+
MeshSize {2} = 1.727160;
//+
MeshSize {3} = 1.727160;
//+
MeshSize {4} = 3.998386;
//+
MeshSize {5} = 3.998386;
//+
MeshSize {6} = 3.998386;
//+
MeshSize {7} = 3.998386;
//+
MeshSize {8} = 1.646643;
//+
Cylinder(2) = {17.874696, 1.640045, 0.000000, 0.000000, 0.000000, 1.000000, 0.844515, 2*Pi};
//+
c0 = 0.08445147807026998;
//+
MeshSize {9, 10} = c0;
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
