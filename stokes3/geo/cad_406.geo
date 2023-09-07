//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.788562, -3.541701, 0.000000, 37.266692, 8.596797, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {7.343343, 1.626944, 0.000000, 0.000000, 0.000000, 1.000000, 0.858167, 2*Pi};
//+
c0 = 0.08581674972504315;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {5.127267, 3.427225, 0.000000, 0.000000, 0.000000, 1.000000, 0.985302, 2*Pi};
//+
c1 = 0.09853021331625132;
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
