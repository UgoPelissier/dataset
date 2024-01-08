//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.989523, -3.965768, 0.000000, 34.579974, 9.211536, 0.100000};
//+
MeshSize {1} = 1.969922;
//+
MeshSize {2} = 1.969922;
//+
MeshSize {3} = 1.630625;
//+
MeshSize {4} = 1.630625;
//+
MeshSize {5} = 0.924216;
//+
MeshSize {6} = 0.924216;
//+
MeshSize {7} = 0.645188;
//+
MeshSize {8} = 0.645188;
//+
Cylinder(2) = {29.979819, 2.542383, 0.000000, 0.000000, 0.000000, 0.100000, 0.729048, 2*Pi};
//+
MeshSize {9} = 0.072905;
//+
MeshSize {10} = 0.072905;
//+
Cylinder(3) = {11.192934, 1.431829, 0.000000, 0.000000, 0.000000, 0.100000, 0.895632, 2*Pi};
//+
MeshSize {11} = 0.089563;
//+
MeshSize {12} = 0.089563;
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
Save "../msh/cad_006.msh2";
//+
Save "../mesh/cad_006.mesh";
//+
Save "../geo_unrolled/cad_006.geo_unrolled";
