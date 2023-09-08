//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.232791, -4.443604, 0.000000, 32.546945, 9.089211, 0.000000};
//+
l = [1.1462502084051163, 3.3093270221031292, 3.3093270221031292, 1.2384137573094651];
//+
MeshSize {1} = 1.146250;
//+
MeshSize {2} = 3.309327;
//+
MeshSize {3} = 3.309327;
//+
MeshSize {4} = 1.238414;
//+
Disk(2) = {11.959103, -1.179953, 0.000000, 0.709507, 0.709507};
//+
c0 = 0.07095070307714878;
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
