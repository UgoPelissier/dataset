//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.892672, -4.389051, 0.000000, 39.052979, 9.409189, 1.000000};
//+
MeshSize {1} = 0.934042;
//+
MeshSize {2} = 0.934042;
//+
MeshSize {3} = 0.490923;
//+
MeshSize {4} = 0.490923;
//+
MeshSize {5} = 1.946109;
//+
MeshSize {6} = 1.946109;
//+
MeshSize {7} = 2.334292;
//+
MeshSize {8} = 2.334292;
//+
Cylinder(2) = {6.042369, 3.321760, 0.000000, 0.000000, 0.000000, 0.100000, 1.157419, 2*Pi};
//+
MeshSize {9} = 0.115742;
//+
MeshSize {10} = 0.115742;
//+
Cylinder(3) = {28.200146, -0.598143, 0.000000, 0.000000, 0.000000, 0.100000, 1.495202, 2*Pi};
//+
MeshSize {11} = 0.149520;
//+
MeshSize {12} = 0.149520;
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
Save "../msh/cad_446.msh2";
//+
Save "../mesh/cad_446.mesh";
//+
Save "../geo_unrolled/cad_446.geo_unrolled";
