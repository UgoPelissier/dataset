//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.301764, -3.883043, 0.000000, 36.300360, 8.052607, 1.000000};
//+
MeshSize {1} = 4.255819;
//+
MeshSize {2} = 4.255819;
//+
MeshSize {3} = 4.337069;
//+
MeshSize {4} = 4.337069;
//+
MeshSize {5} = 0.496719;
//+
MeshSize {6} = 0.496719;
//+
MeshSize {7} = 0.251944;
//+
MeshSize {8} = 0.251944;
//+
Cylinder(2) = {15.636449, -0.035264, 0.000000, 0.000000, 0.000000, 0.100000, 1.472290, 2*Pi};
//+
MeshSize {9} = 0.147229;
//+
MeshSize {10} = 0.147229;
//+
Cylinder(3) = {34.464063, 1.379754, 0.000000, 0.000000, 0.000000, 0.100000, 1.285805, 2*Pi};
//+
MeshSize {11} = 0.128580;
//+
MeshSize {12} = 0.128580;
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
Save "../msh/cad_130.msh2";
//+
Save "../mesh/cad_130.mesh";
//+
Save "../geo_unrolled/cad_130.geo_unrolled";
