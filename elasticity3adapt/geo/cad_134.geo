//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.332964, -3.964430, 0.000000, 29.820373, 9.842899, 0.100000};
//+
MeshSize {1} = 1.849269;
//+
MeshSize {2} = 1.849269;
//+
MeshSize {3} = 0.697377;
//+
MeshSize {4} = 0.697377;
//+
MeshSize {5} = 0.868151;
//+
MeshSize {6} = 0.868151;
//+
MeshSize {7} = 1.758561;
//+
MeshSize {8} = 1.758561;
//+
Cylinder(2) = {6.166754, 4.086048, 0.000000, 0.000000, 0.000000, 0.100000, 1.052079, 2*Pi};
//+
MeshSize {9} = 0.105208;
//+
MeshSize {10} = 0.105208;
//+
Cylinder(3) = {23.384331, -1.174634, 0.000000, 0.000000, 0.000000, 0.100000, 1.033650, 2*Pi};
//+
MeshSize {11} = 0.103365;
//+
MeshSize {12} = 0.103365;
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
Save "../msh/cad_134.msh2";
//+
Save "../mesh/cad_134.mesh";
//+
Save "../geo_unrolled/cad_134.geo_unrolled";
