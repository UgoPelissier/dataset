//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.101901, -3.728034, 0.000000, 38.401031, 9.001029, 1.000000};
//+
MeshSize {1} = 0.809046;
//+
MeshSize {2} = 0.809046;
//+
MeshSize {3} = 0.866563;
//+
MeshSize {4} = 0.866563;
//+
MeshSize {5} = 1.443747;
//+
MeshSize {6} = 1.443747;
//+
MeshSize {7} = 1.702936;
//+
MeshSize {8} = 1.702936;
//+
Cylinder(2) = {13.368363, -0.644672, 0.000000, 0.000000, 0.000000, 0.100000, 0.870571, 2*Pi};
//+
MeshSize {9} = 0.087057;
//+
MeshSize {10} = 0.087057;
//+
Cylinder(3) = {19.480974, -1.429083, 0.000000, 0.000000, 0.000000, 0.100000, 1.349576, 2*Pi};
//+
MeshSize {11} = 0.134958;
//+
MeshSize {12} = 0.134958;
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
Save "../msh/cad_036.msh2";
//+
Save "../mesh/cad_036.mesh";
//+
Save "../geo_unrolled/cad_036.geo_unrolled";
