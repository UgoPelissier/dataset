//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.753594, -3.845794, 0.000000, 37.386668, 7.756200, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {33.107097, 1.857552, 0.000000, 1.364841, 1.364841};
//+
c0 = 0.13648414852046026;
//+
MeshSize {5} = c0;
//+
Disk(3) = {28.315816, 0.475227, 0.000000, 0.737595, 0.737595};
//+
c1 = 0.07375954725662046;
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
