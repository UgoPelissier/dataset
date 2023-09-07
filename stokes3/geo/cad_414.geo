//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.563145, -4.693756, 0.000000, 37.093937, 9.815367, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {14.953272, 2.221348, 0.000000, 0.000000, 0.000000, 1.000000, 1.482956, 2*Pi};
//+
c0 = 0.14829564711785478;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {22.434690, 0.172842, 0.000000, 0.000000, 0.000000, 1.000000, 1.493412, 2*Pi};
//+
c1 = 0.14934120095545392;
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
