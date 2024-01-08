//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.416028, -4.007241, 0.000000, 37.606620, 9.195983, 0.100000};
//+
MeshSize {1} = 0.247363;
//+
MeshSize {2} = 0.247363;
//+
MeshSize {3} = 0.364819;
//+
MeshSize {4} = 0.364819;
//+
MeshSize {5} = 4.743583;
//+
MeshSize {6} = 4.743583;
//+
MeshSize {7} = 4.979078;
//+
MeshSize {8} = 4.979078;
//+
Cylinder(2) = {6.892006, -1.105810, 0.000000, 0.000000, 0.000000, 0.100000, 0.858599, 2*Pi};
//+
MeshSize {9} = 0.085860;
//+
MeshSize {10} = 0.085860;
//+
Cylinder(3) = {4.294182, -0.815828, 0.000000, 0.000000, 0.000000, 0.100000, 0.545972, 2*Pi};
//+
MeshSize {11} = 0.054597;
//+
MeshSize {12} = 0.054597;
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
Save "../msh/cad_229.msh2";
//+
Save "../mesh/cad_229.mesh";
//+
Save "../geo_unrolled/cad_229.geo_unrolled";
