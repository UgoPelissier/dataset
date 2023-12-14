//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.653534, -4.073803, 0.000000, 31.131202, 8.843146, 1.000000};
//+
MeshSize {1} = 1.978777;
//+
MeshSize {2} = 1.978777;
//+
MeshSize {3} = 1.680709;
//+
MeshSize {4} = 1.680709;
//+
MeshSize {5} = 0.779146;
//+
MeshSize {6} = 0.779146;
//+
MeshSize {7} = 0.776453;
//+
MeshSize {8} = 0.776453;
//+
Cylinder(2) = {16.809121, 2.014983, 0.000000, 0.000000, 0.000000, 0.100000, 0.722690, 2*Pi};
//+
MeshSize {9} = 0.072269;
//+
MeshSize {10} = 0.072269;
//+
Cylinder(3) = {21.407015, 0.393037, 0.000000, 0.000000, 0.000000, 0.100000, 1.031934, 2*Pi};
//+
MeshSize {11} = 0.103193;
//+
MeshSize {12} = 0.103193;
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
Save "../msh/cad_127.msh2";
//+
Save "../mesh/cad_127.mesh";
//+
Save "../geo_unrolled/cad_127.geo_unrolled";
