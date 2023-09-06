//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.103927, -4.432526, 0.000000, 36.923502, 9.940560, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {28.703912, 1.456900, 0.000000, 0.000000, 0.000000, 1.000000, 1.439751, 2*Pi};
//+
c0 = 0.1439751;
//+
Cylinder(3) = {8.429133, -2.399174, 0.000000, 0.000000, 0.000000, 1.000000, 0.888033, 2*Pi};
//+
c1 = 0.0888033;
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
Save "cad_358.msh";