//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.455584, -3.647268, 0.000000, 36.646575, 8.663491, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {22.889883, 3.576823, 0.000000, 0.892077, 0.892077};
//+
c0 = 0.08920769183587512;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.957213, 1.431041, 0.000000, 1.288779, 1.288779};
//+
c1 = 0.12887787063478795;
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
