//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.195407, -4.531208, 0.000000, 38.889595, 9.463160, 1.000000};
//+
MeshSize {1} = 0.976722;
//+
MeshSize {2} = 0.976722;
//+
MeshSize {3} = 0.908082;
//+
MeshSize {4} = 0.908082;
//+
MeshSize {5} = 0.998374;
//+
MeshSize {6} = 0.998374;
//+
MeshSize {7} = 1.393002;
//+
MeshSize {8} = 1.393002;
//+
Cylinder(2) = {13.349558, 1.588487, 0.000000, 0.000000, 0.000000, 0.100000, 1.194782, 2*Pi};
//+
MeshSize {9} = 0.119478;
//+
MeshSize {10} = 0.119478;
//+
Cylinder(3) = {24.385915, -2.469704, 0.000000, 0.000000, 0.000000, 0.100000, 1.234586, 2*Pi};
//+
MeshSize {11} = 0.123459;
//+
MeshSize {12} = 0.123459;
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
Save "../msh/cad_499.msh2";
//+
Save "../mesh/cad_001.mesh";
//+
Save "../geo_unrolled/cad_001.geo_unrolled";
