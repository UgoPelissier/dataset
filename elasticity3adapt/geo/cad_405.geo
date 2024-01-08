//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.755244, -4.090285, 0.000000, 31.104820, 8.454424, 0.100000};
//+
MeshSize {1} = 2.933804;
//+
MeshSize {2} = 2.933804;
//+
MeshSize {3} = 2.536399;
//+
MeshSize {4} = 2.536399;
//+
MeshSize {5} = 0.489068;
//+
MeshSize {6} = 0.489068;
//+
MeshSize {7} = 0.715605;
//+
MeshSize {8} = 0.715605;
//+
Cylinder(2) = {26.589938, -1.657791, 0.000000, 0.000000, 0.000000, 0.100000, 1.059281, 2*Pi};
//+
MeshSize {9} = 0.105928;
//+
MeshSize {10} = 0.105928;
//+
Cylinder(3) = {15.055192, 1.300400, 0.000000, 0.000000, 0.000000, 0.100000, 1.392687, 2*Pi};
//+
MeshSize {11} = 0.139269;
//+
MeshSize {12} = 0.139269;
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
Save "../msh/cad_405.msh2";
//+
Save "../mesh/cad_405.mesh";
//+
Save "../geo_unrolled/cad_405.geo_unrolled";
