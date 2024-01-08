//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.327289, -4.663432, 0.000000, 37.414064, 9.331810, 0.100000};
//+
MeshSize {1} = 0.880436;
//+
MeshSize {2} = 0.880436;
//+
MeshSize {3} = 0.952833;
//+
MeshSize {4} = 0.952833;
//+
MeshSize {5} = 1.210519;
//+
MeshSize {6} = 1.210519;
//+
MeshSize {7} = 1.334548;
//+
MeshSize {8} = 1.334548;
//+
Cylinder(2) = {27.586360, -0.387744, 0.000000, 0.000000, 0.000000, 0.100000, 1.164144, 2*Pi};
//+
MeshSize {9} = 0.116414;
//+
MeshSize {10} = 0.116414;
//+
Cylinder(3) = {8.221196, -0.656557, 0.000000, 0.000000, 0.000000, 0.100000, 0.711851, 2*Pi};
//+
MeshSize {11} = 0.071185;
//+
MeshSize {12} = 0.071185;
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
Save "../msh/cad_166.msh2";
//+
Save "../mesh/cad_166.mesh";
//+
Save "../geo_unrolled/cad_166.geo_unrolled";
