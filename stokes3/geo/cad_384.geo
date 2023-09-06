//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072386, -4.459426, 0.000000, 39.397769, 9.507356, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {22.691150, 1.846251, 0.000000, 0.000000, 0.000000, 1.000000, 1.466055, 2*Pi};
//+
c0 = 0.14660550000000003;
//+
Cylinder(3) = {37.940241, -0.391243, 0.000000, 0.000000, 0.000000, 1.000000, 0.960720, 2*Pi};
//+
c1 = 0.096072;
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
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_384.msh";
