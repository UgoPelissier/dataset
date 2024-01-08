//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.956650, -4.123294, 0.000000, 37.090231, 9.212477, 1.000000};
//+
MeshSize {1} = 1.081397;
//+
MeshSize {2} = 1.081397;
//+
MeshSize {3} = 1.156455;
//+
MeshSize {4} = 1.156455;
//+
MeshSize {5} = 0.919469;
//+
MeshSize {6} = 0.919469;
//+
MeshSize {7} = 1.013431;
//+
MeshSize {8} = 1.013431;
//+
Cylinder(2) = {16.725618, -0.145086, 0.000000, 0.000000, 0.000000, 0.100000, 0.704023, 2*Pi};
//+
MeshSize {9} = 0.070402;
//+
MeshSize {10} = 0.070402;
//+
Cylinder(3) = {23.081531, -1.726579, 0.000000, 0.000000, 0.000000, 0.100000, 1.218363, 2*Pi};
//+
MeshSize {11} = 0.121836;
//+
MeshSize {12} = 0.121836;
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
Save "../msh/cad_107.msh2";
//+
Save "../mesh/cad_107.mesh";
//+
Save "../geo_unrolled/cad_107.geo_unrolled";
