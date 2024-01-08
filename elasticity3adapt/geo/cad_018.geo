//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.987233, -4.117404, 0.000000, 29.090998, 9.542760, 0.100000};
//+
MeshSize {1} = 0.786325;
//+
MeshSize {2} = 0.786325;
//+
MeshSize {3} = 0.699799;
//+
MeshSize {4} = 0.699799;
//+
MeshSize {5} = 1.600643;
//+
MeshSize {6} = 1.600643;
//+
MeshSize {7} = 2.428323;
//+
MeshSize {8} = 2.428323;
//+
Cylinder(2) = {9.004783, 1.559179, 0.000000, 0.000000, 0.000000, 0.100000, 1.438930, 2*Pi};
//+
MeshSize {9} = 0.143893;
//+
MeshSize {10} = 0.143893;
//+
Cylinder(3) = {16.639989, -2.172426, 0.000000, 0.000000, 0.000000, 0.100000, 1.104830, 2*Pi};
//+
MeshSize {11} = 0.110483;
//+
MeshSize {12} = 0.110483;
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
Save "../msh/cad_018.msh2";
//+
Save "../mesh/cad_018.mesh";
//+
Save "../geo_unrolled/cad_018.geo_unrolled";
