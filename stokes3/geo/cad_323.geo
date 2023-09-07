//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.655401, -3.275738, 0.000000, 31.938862, 8.546414, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {7.247764, 0.296006, 0.000000, 0.000000, 0.000000, 1.000000, 1.284897, 2*Pi};
//+
c0 = 0.1284897055296117;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {29.547563, 1.468859, 0.000000, 0.000000, 0.000000, 1.000000, 1.007315, 2*Pi};
//+
c1 = 0.10073148556068152;
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
