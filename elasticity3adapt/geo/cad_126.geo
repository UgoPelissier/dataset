//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.816453, -3.060808, 0.000000, 34.966659, 7.613225, 1.000000};
//+
MeshSize {1} = 4.266266;
//+
MeshSize {2} = 4.266266;
//+
MeshSize {3} = 4.180644;
//+
MeshSize {4} = 4.180644;
//+
MeshSize {5} = 0.483830;
//+
MeshSize {6} = 0.483830;
//+
MeshSize {7} = 0.283354;
//+
MeshSize {8} = 0.283354;
//+
Cylinder(2) = {31.117721, 3.096811, 0.000000, 0.000000, 0.000000, 0.100000, 0.875646, 2*Pi};
//+
MeshSize {9} = 0.087565;
//+
MeshSize {10} = 0.087565;
//+
Cylinder(3) = {24.430217, 1.231763, 0.000000, 0.000000, 0.000000, 0.100000, 1.039300, 2*Pi};
//+
MeshSize {11} = 0.103930;
//+
MeshSize {12} = 0.103930;
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
Save "../msh/cad_126.msh2";
//+
Save "../mesh/cad_126.mesh";
//+
Save "../geo_unrolled/cad_126.geo_unrolled";
