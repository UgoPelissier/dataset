//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.826631, -4.063105, 0.000000, 30.832597, 8.269030, 1.000000};
//+
MeshSize {1} = 0.854245;
//+
MeshSize {2} = 0.854245;
//+
MeshSize {3} = 0.471325;
//+
MeshSize {4} = 0.471325;
//+
MeshSize {5} = 2.599321;
//+
MeshSize {6} = 2.599321;
//+
MeshSize {7} = 2.194368;
//+
MeshSize {8} = 2.194368;
//+
Cylinder(2) = {23.711423, 0.572275, 0.000000, 0.000000, 0.000000, 0.100000, 0.788611, 2*Pi};
//+
MeshSize {9} = 0.078861;
//+
MeshSize {10} = 0.078861;
//+
Cylinder(3) = {3.936941, 1.560184, 0.000000, 0.000000, 0.000000, 0.100000, 1.199734, 2*Pi};
//+
MeshSize {11} = 0.119973;
//+
MeshSize {12} = 0.119973;
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
Save "../msh/cad_045.msh2";
//+
Save "../mesh/cad_045.mesh";
//+
Save "../geo_unrolled/cad_045.geo_unrolled";
