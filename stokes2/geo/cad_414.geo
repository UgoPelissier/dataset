//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.563145, -4.693756, 0.000000, 37.093937, 9.815367, 0.000000};
//+
l = [1.4482456688534444, 1.4482456688534444, 3.7975534207992503, 1.4487983639945285, 3.7975534207992503, 1.4513197611406374, 1.3196528930995919, 1.3196528930995919];
//+
MeshSize {1} = 1.448246;
//+
MeshSize {2} = 1.448246;
//+
MeshSize {3} = 3.797553;
//+
MeshSize {4} = 1.448798;
//+
Disk(2) = {14.953272, 2.221348, 0.000000, 1.482956, 1.482956};
//+
c0 = 0.14829564711785478;
//+
MeshSize {5} = c0;
//+
Disk(3) = {22.434690, 0.172842, 0.000000, 1.493412, 1.493412};
//+
c1 = 0.14934120095545392;
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
