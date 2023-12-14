//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.250690, -3.420987, 0.000000, 36.033020, 7.836521, 1.000000};
//+
MeshSize {1} = 3.044061;
//+
MeshSize {2} = 3.044061;
//+
MeshSize {3} = 3.117937;
//+
MeshSize {4} = 3.117937;
//+
MeshSize {5} = 0.591397;
//+
MeshSize {6} = 0.591397;
//+
MeshSize {7} = 0.498420;
//+
MeshSize {8} = 0.498420;
//+
Cylinder(2) = {27.850364, 2.293996, 0.000000, 0.000000, 0.000000, 0.100000, 0.701932, 2*Pi};
//+
MeshSize {9} = 0.070193;
//+
MeshSize {10} = 0.070193;
//+
Cylinder(3) = {24.023199, -0.076403, 0.000000, 0.000000, 0.000000, 0.100000, 0.761665, 2*Pi};
//+
MeshSize {11} = 0.076167;
//+
MeshSize {12} = 0.076167;
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
Save "../msh/cad_419.msh2";
//+
Save "../mesh/cad_419.mesh";
//+
Save "../geo_unrolled/cad_419.geo_unrolled";
