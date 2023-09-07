//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.823643, -3.572170, 0.000000, 29.582889, 7.675970, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {2.953060, 1.728413, 0.000000, 0.000000, 0.000000, 1.000000, 1.031661, 2*Pi};
//+
c0 = 0.10316610514024727;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {5.760834, 0.201049, 0.000000, 0.000000, 0.000000, 1.000000, 0.748763, 2*Pi};
//+
c1 = 0.07487630290540134;
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
