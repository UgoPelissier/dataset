//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.103927, -4.432526, 0.000000, 36.923502, 9.940560, 1.000000};
//+
MeshSize {1} = 3.735953;
//+
MeshSize {2} = 3.735953;
//+
MeshSize {3} = 0.768189;
//+
MeshSize {4} = 0.768189;
//+
MeshSize {5} = 0.768189;
//+
MeshSize {6} = 0.875663;
//+
MeshSize {7} = 0.875663;
//+
MeshSize {8} = 0.875663;
//+
Cylinder(2) = {28.703912, 1.456900, 0.000000, 0.000000, 0.000000, 1.000000, 1.439751, 2*Pi};
//+
MeshSize {9} = 0.143975;
//+
MeshSize {10} = 0.143975;
//+
Cylinder(3) = {8.429133, -2.399174, 0.000000, 0.000000, 0.000000, 1.000000, 0.888033, 2*Pi};
//+
MeshSize {11} = 0.088803;
//+
MeshSize {12} = 0.088803;
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
