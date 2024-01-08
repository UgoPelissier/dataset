//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.107817, -3.031026, 0.000000, 35.026975, 7.648163, 1.000000};
//+
MeshSize {1} = 0.445407;
//+
MeshSize {2} = 0.445407;
//+
MeshSize {3} = 0.864718;
//+
MeshSize {4} = 0.864718;
//+
MeshSize {5} = 2.676583;
//+
MeshSize {6} = 2.676583;
//+
MeshSize {7} = 2.204287;
//+
MeshSize {8} = 2.204287;
//+
Cylinder(2) = {4.178307, -1.889001, 0.000000, 0.000000, 0.000000, 0.100000, 0.566247, 2*Pi};
//+
MeshSize {9} = 0.056625;
//+
MeshSize {10} = 0.056625;
//+
Cylinder(3) = {23.455510, 1.946842, 0.000000, 0.000000, 0.000000, 0.100000, 1.282371, 2*Pi};
//+
MeshSize {11} = 0.128237;
//+
MeshSize {12} = 0.128237;
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
Save "../msh/cad_412.msh2";
//+
Save "../mesh/cad_412.mesh";
//+
Save "../geo_unrolled/cad_412.geo_unrolled";
