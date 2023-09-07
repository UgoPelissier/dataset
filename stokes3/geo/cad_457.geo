//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.455584, -3.647268, 0.000000, 36.646575, 8.663491, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {22.889883, 3.576823, 0.000000, 0.000000, 0.000000, 1.000000, 0.892077, 2*Pi};
//+
c0 = 0.08920769183587512;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {25.957213, 1.431041, 0.000000, 0.000000, 0.000000, 1.000000, 1.288779, 2*Pi};
//+
c1 = 0.12887787063478795;
//+
MeshSize {11, 12} = c1;
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
