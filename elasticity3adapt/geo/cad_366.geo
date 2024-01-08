//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.755484, -4.132437, 0.000000, 30.920520, 8.496862, 0.100000};
//+
MeshSize {1} = 0.830899;
//+
MeshSize {2} = 0.830899;
//+
MeshSize {3} = 0.683269;
//+
MeshSize {4} = 0.683269;
//+
MeshSize {5} = 1.796299;
//+
MeshSize {6} = 1.796299;
//+
MeshSize {7} = 2.049480;
//+
MeshSize {8} = 2.049480;
//+
Cylinder(2) = {9.546106, 2.091507, 0.000000, 0.000000, 0.000000, 0.100000, 1.252428, 2*Pi};
//+
MeshSize {9} = 0.125243;
//+
MeshSize {10} = 0.125243;
//+
Cylinder(3) = {16.868132, -1.021316, 0.000000, 0.000000, 0.000000, 0.100000, 1.205608, 2*Pi};
//+
MeshSize {11} = 0.120561;
//+
MeshSize {12} = 0.120561;
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
Save "../msh/cad_366.msh2";
//+
Save "../mesh/cad_366.mesh";
//+
Save "../geo_unrolled/cad_366.geo_unrolled";
