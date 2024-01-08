//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072589, -3.805567, 0.000000, 30.988766, 9.467230, 0.100000};
//+
MeshSize {1} = 0.871432;
//+
MeshSize {2} = 0.871432;
//+
MeshSize {3} = 0.782319;
//+
MeshSize {4} = 0.782319;
//+
MeshSize {5} = 1.476449;
//+
MeshSize {6} = 1.476449;
//+
MeshSize {7} = 1.760854;
//+
MeshSize {8} = 1.760854;
//+
Cylinder(2) = {13.594814, -0.992987, 0.000000, 0.000000, 0.000000, 0.100000, 1.160723, 2*Pi};
//+
MeshSize {9} = 0.116072;
//+
MeshSize {10} = 0.116072;
//+
Cylinder(3) = {12.144759, 2.816355, 0.000000, 0.000000, 0.000000, 0.100000, 1.045724, 2*Pi};
//+
MeshSize {11} = 0.104572;
//+
MeshSize {12} = 0.104572;
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
Save "../msh/cad_252.msh2";
//+
Save "../mesh/cad_252.mesh";
//+
Save "../geo_unrolled/cad_252.geo_unrolled";
