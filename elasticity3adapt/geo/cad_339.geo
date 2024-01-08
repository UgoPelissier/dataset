//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.615993, -4.134026, 0.000000, 31.140298, 8.326287, 1.000000};
//+
MeshSize {1} = 1.903530;
//+
MeshSize {2} = 1.903530;
//+
MeshSize {3} = 1.364861;
//+
MeshSize {4} = 1.364861;
//+
MeshSize {5} = 0.903669;
//+
MeshSize {6} = 0.903669;
//+
MeshSize {7} = 0.747752;
//+
MeshSize {8} = 0.747752;
//+
Cylinder(2) = {10.731621, 1.436059, 0.000000, 0.000000, 0.000000, 0.100000, 1.416163, 2*Pi};
//+
MeshSize {9} = 0.141616;
//+
MeshSize {10} = 0.141616;
//+
Cylinder(3) = {25.317842, 1.212742, 0.000000, 0.000000, 0.000000, 0.100000, 0.981496, 2*Pi};
//+
MeshSize {11} = 0.098150;
//+
MeshSize {12} = 0.098150;
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
Save "../msh/cad_339.msh2";
//+
Save "../mesh/cad_339.mesh";
//+
Save "../geo_unrolled/cad_339.geo_unrolled";
