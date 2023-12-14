//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.227595, -4.136663, 0.000000, 31.703702, 8.320655, 1.000000};
//+
MeshSize {1} = 1.585220;
//+
MeshSize {2} = 1.585220;
//+
MeshSize {3} = 1.741712;
//+
MeshSize {4} = 1.741712;
//+
MeshSize {5} = 0.793179;
//+
MeshSize {6} = 0.793179;
//+
MeshSize {7} = 0.837661;
//+
MeshSize {8} = 0.837661;
//+
Cylinder(2) = {20.483344, -0.834742, 0.000000, 0.000000, 0.000000, 0.100000, 1.481150, 2*Pi};
//+
MeshSize {9} = 0.148115;
//+
MeshSize {10} = 0.148115;
//+
Cylinder(3) = {16.330402, -0.955249, 0.000000, 0.000000, 0.000000, 0.100000, 1.076588, 2*Pi};
//+
MeshSize {11} = 0.107659;
//+
MeshSize {12} = 0.107659;
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
Save "../msh/cad_023.msh2";
//+
Save "../mesh/cad_023.mesh";
//+
Save "../geo_unrolled/cad_023.geo_unrolled";
