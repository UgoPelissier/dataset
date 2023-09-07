//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.664144, -4.059808, 0.000000, 29.969163, 8.836061, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {6.672851, -0.621678, 0.000000, 0.711851, 0.711851};
//+
c0 = 0.07118514664077383;
//+
MeshSize {5} = c0;
//+
Disk(3) = {8.226171, 2.901264, 0.000000, 0.837755, 0.837755};
//+
c1 = 0.08377551551707874;
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
