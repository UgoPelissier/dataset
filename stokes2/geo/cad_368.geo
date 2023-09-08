//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.464701, -3.867297, 0.000000, 33.503150, 8.755418, 0.000000};
//+
l = [3.4248785052525066, 1.545547195001054, 1.2075966452497944, 1.2075966452497944, 1.029856622202893, 1.029856622202893, 3.4248785052525066, 1.63748683515686];
//+
MeshSize {1} = 3.424879;
//+
MeshSize {2} = 1.545547;
//+
MeshSize {3} = 1.207597;
//+
MeshSize {4} = 1.207597;
//+
Disk(2) = {22.509765, 3.046727, 0.000000, 1.306540, 1.306540};
//+
c0 = 0.13065400569278984;
//+
MeshSize {5} = c0;
//+
Disk(3) = {16.423572, -1.236304, 0.000000, 0.718819, 0.718819};
//+
c1 = 0.07188191172590284;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
