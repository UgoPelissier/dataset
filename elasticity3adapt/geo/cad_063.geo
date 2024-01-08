//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.887259, -4.452444, 0.000000, 33.649178, 9.176216, 0.100000};
//+
MeshSize {1} = 0.365119;
//+
MeshSize {2} = 0.365119;
//+
MeshSize {3} = 0.401247;
//+
MeshSize {4} = 0.401247;
//+
MeshSize {5} = 4.452806;
//+
MeshSize {6} = 4.452806;
//+
MeshSize {7} = 4.008025;
//+
MeshSize {8} = 4.008025;
//+
Cylinder(2) = {3.419855, -0.097754, 0.000000, 0.000000, 0.000000, 0.100000, 0.908116, 2*Pi};
//+
MeshSize {9} = 0.090812;
//+
MeshSize {10} = 0.090812;
//+
Cylinder(3) = {15.704318, 1.493601, 0.000000, 0.000000, 0.000000, 0.100000, 1.141704, 2*Pi};
//+
MeshSize {11} = 0.114170;
//+
MeshSize {12} = 0.114170;
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
Save "../msh/cad_063.msh2";
//+
Save "../mesh/cad_063.mesh";
//+
Save "../geo_unrolled/cad_063.geo_unrolled";
