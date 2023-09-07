//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.041182, -3.838072, 0.000000, 31.454618, 8.756004, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {12.374155, -0.476184, 0.000000, 1.095132, 1.095132};
//+
c0 = 0.10951321912948404;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.896855, -2.433419, 0.000000, 0.789783, 0.789783};
//+
c1 = 0.07897830291566871;
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
