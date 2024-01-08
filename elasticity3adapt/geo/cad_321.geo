//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.995686, -3.940511, 0.000000, 30.455838, 9.832575, 1.000000};
//+
MeshSize {1} = 5.813515;
//+
MeshSize {2} = 5.813515;
//+
MeshSize {3} = 5.514683;
//+
MeshSize {4} = 5.514683;
//+
MeshSize {5} = 0.159721;
//+
MeshSize {6} = 0.159721;
//+
MeshSize {7} = 0.275439;
//+
MeshSize {8} = 0.275439;
//+
Cylinder(2) = {28.844574, -1.794482, 0.000000, 0.000000, 0.000000, 0.100000, 1.057340, 2*Pi};
//+
MeshSize {9} = 0.105734;
//+
MeshSize {10} = 0.105734;
//+
Cylinder(3) = {27.665959, 2.232777, 0.000000, 0.000000, 0.000000, 0.100000, 1.265435, 2*Pi};
//+
MeshSize {11} = 0.126544;
//+
MeshSize {12} = 0.126544;
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
Save "../msh/cad_321.msh2";
//+
Save "../mesh/cad_321.mesh";
//+
Save "../geo_unrolled/cad_321.geo_unrolled";
