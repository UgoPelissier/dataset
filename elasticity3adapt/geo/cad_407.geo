//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.512526, -3.378295, 0.000000, 37.940275, 7.907118, 0.100000};
//+
MeshSize {1} = 0.689832;
//+
MeshSize {2} = 0.689832;
//+
MeshSize {3} = 0.706572;
//+
MeshSize {4} = 0.706572;
//+
MeshSize {5} = 2.321208;
//+
MeshSize {6} = 2.321208;
//+
MeshSize {7} = 2.094916;
//+
MeshSize {8} = 2.094916;
//+
Cylinder(2) = {11.145783, 0.234148, 0.000000, 0.000000, 0.000000, 0.100000, 1.436317, 2*Pi};
//+
MeshSize {9} = 0.143632;
//+
MeshSize {10} = 0.143632;
//+
Cylinder(3) = {19.759606, 2.106792, 0.000000, 0.000000, 0.000000, 0.100000, 0.683247, 2*Pi};
//+
MeshSize {11} = 0.068325;
//+
MeshSize {12} = 0.068325;
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
Save "../msh/cad_407.msh2";
//+
Save "../mesh/cad_407.mesh";
//+
Save "../geo_unrolled/cad_407.geo_unrolled";
