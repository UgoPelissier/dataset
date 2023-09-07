//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.753594, -3.845794, 0.000000, 37.386668, 7.756200, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {33.107097, 1.857552, 0.000000, 0.000000, 0.000000, 1.000000, 1.364841, 2*Pi};
//+
c0 = 0.13648414852046026;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {28.315816, 0.475227, 0.000000, 0.000000, 0.000000, 1.000000, 0.737595, 2*Pi};
//+
c1 = 0.07375954725662046;
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
