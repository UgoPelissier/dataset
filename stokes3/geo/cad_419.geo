//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.041182, -3.838072, 0.000000, 31.454618, 8.756004, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {12.374155, -0.476184, 0.000000, 0.000000, 0.000000, 1.000000, 1.095132, 2*Pi};
//+
c0 = 0.10951321912948404;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {15.896855, -2.433419, 0.000000, 0.000000, 0.000000, 1.000000, 0.789783, 2*Pi};
//+
c1 = 0.07897830291566871;
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
