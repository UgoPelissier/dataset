//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.880132, -3.889715, 0.000000, 33.232386, 8.607511, 1.000000};
//+
MeshSize {1} = 0.463482;
//+
MeshSize {2} = 0.463482;
//+
MeshSize {3} = 0.316678;
//+
MeshSize {4} = 0.316678;
//+
MeshSize {5} = 4.347622;
//+
MeshSize {6} = 4.347622;
//+
MeshSize {7} = 4.002456;
//+
MeshSize {8} = 4.002456;
//+
Cylinder(2) = {9.339876, 2.402424, 0.000000, 0.000000, 0.000000, 0.100000, 0.606771, 2*Pi};
//+
MeshSize {9} = 0.060677;
//+
MeshSize {10} = 0.060677;
//+
Cylinder(3) = {6.302168, 2.259020, 0.000000, 0.000000, 0.000000, 0.100000, 1.111982, 2*Pi};
//+
MeshSize {11} = 0.111198;
//+
MeshSize {12} = 0.111198;
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
Save "../msh/cad_322.msh2";
//+
Save "../mesh/cad_322.mesh";
//+
Save "../geo_unrolled/cad_322.geo_unrolled";
