//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.335188, -3.772571, 0.000000, 37.176193, 9.181989, 0.100000};
//+
MeshSize {1} = 0.171574;
//+
MeshSize {2} = 0.171574;
//+
MeshSize {3} = 0.350327;
//+
MeshSize {4} = 0.350327;
//+
MeshSize {5} = 5.163493;
//+
MeshSize {6} = 5.163493;
//+
MeshSize {7} = 5.356474;
//+
MeshSize {8} = 5.356474;
//+
Cylinder(2) = {9.184382, -0.228298, 0.000000, 0.000000, 0.000000, 0.100000, 1.349738, 2*Pi};
//+
MeshSize {9} = 0.134974;
//+
MeshSize {10} = 0.134974;
//+
Cylinder(3) = {2.731887, -0.785602, 0.000000, 0.000000, 0.000000, 0.100000, 1.129765, 2*Pi};
//+
MeshSize {11} = 0.112977;
//+
MeshSize {12} = 0.112977;
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
Save "../msh/cad_028.msh2";
//+
Save "../mesh/cad_028.mesh";
//+
Save "../geo_unrolled/cad_028.geo_unrolled";
