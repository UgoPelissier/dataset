//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.360962, -3.511793, 0.000000, 38.957484, 8.144287, 1.000000};
//+
MeshSize {1} = 1.462188;
//+
MeshSize {2} = 1.462188;
//+
MeshSize {3} = 1.309372;
//+
MeshSize {4} = 1.309372;
//+
MeshSize {5} = 0.964125;
//+
MeshSize {6} = 0.964125;
//+
MeshSize {7} = 0.806852;
//+
MeshSize {8} = 0.806852;
//+
Cylinder(2) = {13.962335, 1.410532, 0.000000, 0.000000, 0.000000, 0.100000, 0.987494, 2*Pi};
//+
MeshSize {9} = 0.098749;
//+
MeshSize {10} = 0.098749;
//+
Cylinder(3) = {28.959064, 3.173279, 0.000000, 0.000000, 0.000000, 0.100000, 0.881071, 2*Pi};
//+
MeshSize {11} = 0.088107;
//+
MeshSize {12} = 0.088107;
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
Save "../msh/cad_284.msh2";
//+
Save "../mesh/cad_284.mesh";
//+
Save "../geo_unrolled/cad_284.geo_unrolled";
