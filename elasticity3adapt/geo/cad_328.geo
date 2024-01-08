//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.054547, -4.270397, 0.000000, 31.367850, 9.574734, 1.000000};
//+
MeshSize {1} = 0.392514;
//+
MeshSize {2} = 0.392514;
//+
MeshSize {3} = 0.568043;
//+
MeshSize {4} = 0.568043;
//+
MeshSize {5} = 3.778026;
//+
MeshSize {6} = 3.778026;
//+
MeshSize {7} = 3.254726;
//+
MeshSize {8} = 3.254726;
//+
Cylinder(2) = {14.193436, 2.131784, 0.000000, 0.000000, 0.000000, 0.100000, 0.613172, 2*Pi};
//+
MeshSize {9} = 0.061317;
//+
MeshSize {10} = 0.061317;
//+
Cylinder(3) = {4.251660, -0.827647, 0.000000, 0.000000, 0.000000, 0.100000, 0.950886, 2*Pi};
//+
MeshSize {11} = 0.095089;
//+
MeshSize {12} = 0.095089;
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
Save "../msh/cad_328.msh2";
//+
Save "../mesh/cad_328.mesh";
//+
Save "../geo_unrolled/cad_328.geo_unrolled";
