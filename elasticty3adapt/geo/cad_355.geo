//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.817034, -3.657904, 0.000000, 38.215526, 9.090332, 1.000000};
//+
MeshSize {1} = 0.619441;
//+
MeshSize {2} = 0.619441;
//+
MeshSize {3} = 0.552676;
//+
MeshSize {4} = 0.552676;
//+
MeshSize {5} = 2.617194;
//+
MeshSize {6} = 2.617194;
//+
MeshSize {7} = 3.047297;
//+
MeshSize {8} = 3.047297;
//+
Cylinder(2) = {20.736275, -1.000094, 0.000000, 0.000000, 0.000000, 0.100000, 1.077931, 2*Pi};
//+
MeshSize {9} = 0.107793;
//+
MeshSize {10} = 0.107793;
//+
Cylinder(3) = {7.637369, 1.650048, 0.000000, 0.000000, 0.000000, 0.100000, 0.816598, 2*Pi};
//+
MeshSize {11} = 0.081660;
//+
MeshSize {12} = 0.081660;
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
Save "../msh/cad_355.msh2";
//+
Save "../mesh/cad_355.mesh";
//+
Save "../geo_unrolled/cad_355.geo_unrolled";
