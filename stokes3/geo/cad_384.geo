//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072386, -4.459426, 0.000000, 39.397769, 9.507356, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {22.691150, 1.846251, 0.000000, 0.000000, 0.000000, 1.000000, 1.466055, 2*Pi};
//+
c0 = 0.1466055455633106;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {37.940241, -0.391243, 0.000000, 0.000000, 0.000000, 1.000000, 0.960720, 2*Pi};
//+
c1 = 0.09607204414645122;
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
