//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.290703, -3.909659, 0.000000, 38.781374, 8.694028, 0.100000};
//+
MeshSize {1} = 0.745069;
//+
MeshSize {2} = 0.745069;
//+
MeshSize {3} = 1.034432;
//+
MeshSize {4} = 1.034432;
//+
MeshSize {5} = 1.328383;
//+
MeshSize {6} = 1.328383;
//+
MeshSize {7} = 1.498387;
//+
MeshSize {8} = 1.498387;
//+
Cylinder(2) = {32.880636, 0.200763, 0.000000, 0.000000, 0.000000, 0.100000, 0.795482, 2*Pi};
//+
MeshSize {9} = 0.079548;
//+
MeshSize {10} = 0.079548;
//+
Cylinder(3) = {4.205413, -0.652804, 0.000000, 0.000000, 0.000000, 0.100000, 0.594484, 2*Pi};
//+
MeshSize {11} = 0.059448;
//+
MeshSize {12} = 0.059448;
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
Save "../msh/cad_454.msh2";
//+
Save "../mesh/cad_454.mesh";
//+
Save "../geo_unrolled/cad_454.geo_unrolled";
