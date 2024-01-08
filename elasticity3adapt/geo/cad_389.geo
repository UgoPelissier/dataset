//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.731786, -3.169804, 0.000000, 30.595334, 8.239476, 0.100000};
//+
MeshSize {1} = 1.299887;
//+
MeshSize {2} = 1.299887;
//+
MeshSize {3} = 1.044296;
//+
MeshSize {4} = 1.044296;
//+
MeshSize {5} = 1.250439;
//+
MeshSize {6} = 1.250439;
//+
MeshSize {7} = 0.816743;
//+
MeshSize {8} = 0.816743;
//+
Cylinder(2) = {9.549653, 1.675122, 0.000000, 0.000000, 0.000000, 0.100000, 1.357922, 2*Pi};
//+
MeshSize {9} = 0.135792;
//+
MeshSize {10} = 0.135792;
//+
Cylinder(3) = {24.179368, 3.083204, 0.000000, 0.000000, 0.000000, 0.100000, 0.905360, 2*Pi};
//+
MeshSize {11} = 0.090536;
//+
MeshSize {12} = 0.090536;
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
Save "../msh/cad_389.msh2";
//+
Save "../mesh/cad_389.mesh";
//+
Save "../geo_unrolled/cad_389.geo_unrolled";
