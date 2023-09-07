//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.708966, -3.669185, 0.000000, 38.157569, 8.616575, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {10.307889, -2.158100, 0.000000, 0.000000, 0.000000, 1.000000, 0.567795, 2*Pi};
//+
c0 = 0.056779478006423384;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {15.000038, 2.004082, 0.000000, 0.000000, 0.000000, 1.000000, 1.469102, 2*Pi};
//+
c1 = 0.14691018251056853;
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
