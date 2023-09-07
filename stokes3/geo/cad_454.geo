//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.318485, -3.962528, 0.000000, 36.725052, 8.208169, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {12.548087, -0.462550, 0.000000, 0.000000, 0.000000, 1.000000, 0.630074, 2*Pi};
//+
c0 = 0.063007400206471;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {17.437711, 1.440500, 0.000000, 0.000000, 0.000000, 1.000000, 0.605927, 2*Pi};
//+
c1 = 0.06059269188612673;
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
