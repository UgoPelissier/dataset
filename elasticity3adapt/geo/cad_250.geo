//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.103927, -4.432526, 0.000000, 36.923502, 9.940560, 0.100000};
//+
MeshSize {1} = 0.881718;
//+
MeshSize {2} = 0.881718;
//+
MeshSize {3} = 1.797810;
//+
MeshSize {4} = 1.797810;
//+
MeshSize {5} = 1.015307;
//+
MeshSize {6} = 1.015307;
//+
MeshSize {7} = 0.897258;
//+
MeshSize {8} = 0.897258;
//+
Cylinder(2) = {28.703912, 1.456900, 0.000000, 0.000000, 0.000000, 0.100000, 1.439751, 2*Pi};
//+
MeshSize {9} = 0.143975;
//+
MeshSize {10} = 0.143975;
//+
Cylinder(3) = {8.429133, -2.399174, 0.000000, 0.000000, 0.000000, 0.100000, 0.888033, 2*Pi};
//+
MeshSize {11} = 0.088803;
//+
MeshSize {12} = 0.088803;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; }
//+
Physical Volume("SOLID", 1) = {1, 2, 3};
//+
Physical Surface("WALLS", 2) = {13, 18};
//+
Physical Surface("LOAD", 3) = {8, 11};
//+
Physical Surface("BORDER", 4) = {7, 9, 10, 12, 14, 15, 16, 17};
//+
//+
//+
//+
//+
//+
Mesh 3;
//+
Save "../msh/cad_250.msh2";
//+
Save "../mesh/cad_250.mesh";
//+
Save "../geo_unrolled/cad_250.geo_unrolled";
