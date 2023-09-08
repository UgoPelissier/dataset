//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.823339, -4.479173, 0.000000, 38.900458, 9.105846, 0.000000};
//+
l = [1.727159880037943, 3.998386153354527, 3.998386153354527, 1.6466426961100744];
//+
MeshSize {1} = 1.727160;
//+
MeshSize {2} = 3.998386;
//+
MeshSize {3} = 3.998386;
//+
MeshSize {4} = 1.646643;
//+
Disk(2) = {17.874696, 1.640045, 0.000000, 0.844515, 0.844515};
//+
c0 = 0.08445147807026998;
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
