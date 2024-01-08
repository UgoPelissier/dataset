//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.276201, -4.275031, 0.000000, 38.458462, 9.466377, 0.100000};
//+
MeshSize {1} = 1.485955;
//+
MeshSize {2} = 1.485955;
//+
MeshSize {3} = 1.690803;
//+
MeshSize {4} = 1.690803;
//+
MeshSize {5} = 0.829414;
//+
MeshSize {6} = 0.829414;
//+
MeshSize {7} = 0.838129;
//+
MeshSize {8} = 0.838129;
//+
Cylinder(2) = {24.133939, 0.213580, 0.000000, 0.000000, 0.000000, 0.100000, 0.919594, 2*Pi};
//+
MeshSize {9} = 0.091959;
//+
MeshSize {10} = 0.091959;
//+
Cylinder(3) = {20.747582, -1.477993, 0.000000, 0.000000, 0.000000, 0.100000, 0.910890, 2*Pi};
//+
MeshSize {11} = 0.091089;
//+
MeshSize {12} = 0.091089;
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
Save "../msh/cad_206.msh2";
//+
Save "../mesh/cad_206.mesh";
//+
Save "../geo_unrolled/cad_206.geo_unrolled";
