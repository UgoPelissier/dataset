//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.530557, -3.420258, 0.000000, 35.523711, 7.747946, 1.000000};
//+
MeshSize {1} = 2.070010;
//+
MeshSize {2} = 2.070010;
//+
MeshSize {3} = 2.287770;
//+
MeshSize {4} = 2.287770;
//+
MeshSize {5} = 0.747301;
//+
MeshSize {6} = 0.747301;
//+
MeshSize {7} = 0.660583;
//+
MeshSize {8} = 0.660583;
//+
Cylinder(2) = {27.724388, 1.711056, 0.000000, 0.000000, 0.000000, 0.100000, 0.715023, 2*Pi};
//+
MeshSize {9} = 0.071502;
//+
MeshSize {10} = 0.071502;
//+
Cylinder(3) = {16.350571, -0.650908, 0.000000, 0.000000, 0.000000, 0.100000, 0.595086, 2*Pi};
//+
MeshSize {11} = 0.059509;
//+
MeshSize {12} = 0.059509;
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
Save "../msh/cad_068.msh2";
//+
Save "../mesh/cad_068.mesh";
//+
Save "../geo_unrolled/cad_068.geo_unrolled";
