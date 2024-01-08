//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.664094, -4.475013, 0.000000, 31.810560, 9.386849, 0.100000};
//+
MeshSize {1} = 4.131482;
//+
MeshSize {2} = 4.131482;
//+
MeshSize {3} = 4.080846;
//+
MeshSize {4} = 4.080846;
//+
MeshSize {5} = 0.412172;
//+
MeshSize {6} = 0.412172;
//+
MeshSize {7} = 0.385196;
//+
MeshSize {8} = 0.385196;
//+
Cylinder(2) = {26.261996, -0.437124, 0.000000, 0.000000, 0.000000, 0.100000, 1.013248, 2*Pi};
//+
MeshSize {9} = 0.101325;
//+
MeshSize {10} = 0.101325;
//+
Cylinder(3) = {26.204297, 2.095896, 0.000000, 0.000000, 0.000000, 0.100000, 0.895949, 2*Pi};
//+
MeshSize {11} = 0.089595;
//+
MeshSize {12} = 0.089595;
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
Save "../msh/cad_125.msh2";
//+
Save "../mesh/cad_125.mesh";
//+
Save "../geo_unrolled/cad_125.geo_unrolled";
