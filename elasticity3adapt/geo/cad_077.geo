//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.168133, -3.876957, 0.000000, 30.972134, 8.774880, 0.100000};
//+
MeshSize {1} = 5.383497;
//+
MeshSize {2} = 5.383497;
//+
MeshSize {3} = 4.911724;
//+
MeshSize {4} = 4.911724;
//+
MeshSize {5} = 0.183154;
//+
MeshSize {6} = 0.183154;
//+
MeshSize {7} = 0.364372;
//+
MeshSize {8} = 0.364372;
//+
Cylinder(2) = {28.210675, -1.321714, 0.000000, 0.000000, 0.000000, 0.100000, 1.227379, 2*Pi};
//+
MeshSize {9} = 0.122738;
//+
MeshSize {10} = 0.122738;
//+
Cylinder(3) = {25.502278, 2.764412, 0.000000, 0.000000, 0.000000, 0.100000, 0.736269, 2*Pi};
//+
MeshSize {11} = 0.073627;
//+
MeshSize {12} = 0.073627;
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
Save "../msh/cad_077.msh2";
//+
Save "../mesh/cad_077.mesh";
//+
Save "../geo_unrolled/cad_077.geo_unrolled";
