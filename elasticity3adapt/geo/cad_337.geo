//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179907, -4.364666, 0.000000, 36.905963, 9.948144, 1.000000};
//+
MeshSize {1} = 0.687916;
//+
MeshSize {2} = 0.687916;
//+
MeshSize {3} = 0.308525;
//+
MeshSize {4} = 0.308525;
//+
MeshSize {5} = 3.524643;
//+
MeshSize {6} = 3.524643;
//+
MeshSize {7} = 3.253041;
//+
MeshSize {8} = 3.253041;
//+
Cylinder(2) = {4.373378, 3.462648, 0.000000, 0.000000, 0.000000, 0.100000, 1.299564, 2*Pi};
//+
MeshSize {9} = 0.129956;
//+
MeshSize {10} = 0.129956;
//+
Cylinder(3) = {20.783497, 1.367905, 0.000000, 0.000000, 0.000000, 0.100000, 0.511297, 2*Pi};
//+
MeshSize {11} = 0.051130;
//+
MeshSize {12} = 0.051130;
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
Save "../msh/cad_337.msh2";
//+
Save "../mesh/cad_337.mesh";
//+
Save "../geo_unrolled/cad_337.geo_unrolled";
