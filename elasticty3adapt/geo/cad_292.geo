//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.737118, -3.689002, 0.000000, 33.046463, 8.157451, 1.000000};
//+
MeshSize {1} = 3.107290;
//+
MeshSize {2} = 3.107290;
//+
MeshSize {3} = 1.959544;
//+
MeshSize {4} = 1.959544;
//+
MeshSize {5} = 0.904504;
//+
MeshSize {6} = 0.904504;
//+
MeshSize {7} = 0.384886;
//+
MeshSize {8} = 0.384886;
//+
Cylinder(2) = {30.741518, 2.509027, 0.000000, 0.000000, 0.000000, 0.100000, 1.184640, 2*Pi};
//+
MeshSize {9} = 0.118464;
//+
MeshSize {10} = 0.118464;
//+
Cylinder(3) = {9.617403, 1.981664, 0.000000, 0.000000, 0.000000, 0.100000, 1.308809, 2*Pi};
//+
MeshSize {11} = 0.130881;
//+
MeshSize {12} = 0.130881;
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
Save "../msh/cad_292.msh2";
//+
Save "../mesh/cad_292.mesh";
//+
Save "../geo_unrolled/cad_292.geo_unrolled";
