//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.948084, -3.117317, 0.000000, 33.085832, 8.071046, 0.100000};
//+
MeshSize {1} = 0.551531;
//+
MeshSize {2} = 0.551531;
//+
MeshSize {3} = 0.592443;
//+
MeshSize {4} = 0.592443;
//+
MeshSize {5} = 2.869303;
//+
MeshSize {6} = 2.869303;
//+
MeshSize {7} = 2.955190;
//+
MeshSize {8} = 2.955190;
//+
Cylinder(2) = {8.705507, 0.280335, 0.000000, 0.000000, 0.000000, 0.100000, 0.548587, 2*Pi};
//+
MeshSize {9} = 0.054859;
//+
MeshSize {10} = 0.054859;
//+
Cylinder(3) = {12.941525, 0.381618, 0.000000, 0.000000, 0.000000, 0.100000, 0.974396, 2*Pi};
//+
MeshSize {11} = 0.097440;
//+
MeshSize {12} = 0.097440;
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
Save "../msh/cad_222.msh2";
//+
Save "../mesh/cad_222.mesh";
//+
Save "../geo_unrolled/cad_222.geo_unrolled";
