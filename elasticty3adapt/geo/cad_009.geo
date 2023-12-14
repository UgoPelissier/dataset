//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.640962, -4.205602, 0.000000, 33.706691, 8.634309, 1.000000};
//+
MeshSize {1} = 4.008884;
//+
MeshSize {2} = 4.008884;
//+
MeshSize {3} = 3.337666;
//+
MeshSize {4} = 3.337666;
//+
MeshSize {5} = 0.347521;
//+
MeshSize {6} = 0.347521;
//+
MeshSize {7} = 0.569455;
//+
MeshSize {8} = 0.569455;
//+
Cylinder(2) = {29.900269, -1.740290, 0.000000, 0.000000, 0.000000, 0.100000, 1.138949, 2*Pi};
//+
MeshSize {9} = 0.113895;
//+
MeshSize {10} = 0.113895;
//+
Cylinder(3) = {18.526403, 2.405747, 0.000000, 0.000000, 0.000000, 0.100000, 1.030354, 2*Pi};
//+
MeshSize {11} = 0.103035;
//+
MeshSize {12} = 0.103035;
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
Save "../msh/cad_009.msh2";
//+
Save "../mesh/cad_009.mesh";
//+
Save "../geo_unrolled/cad_009.geo_unrolled";
