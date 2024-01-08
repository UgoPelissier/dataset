//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.086688, -4.386502, 0.000000, 37.437768, 8.973935, 1.000000};
//+
MeshSize {1} = 0.449372;
//+
MeshSize {2} = 0.449372;
//+
MeshSize {3} = 0.685864;
//+
MeshSize {4} = 0.685864;
//+
MeshSize {5} = 3.051934;
//+
MeshSize {6} = 3.051934;
//+
MeshSize {7} = 2.828583;
//+
MeshSize {8} = 2.828583;
//+
Cylinder(2) = {5.247052, -2.001478, 0.000000, 0.000000, 0.000000, 0.100000, 0.584249, 2*Pi};
//+
MeshSize {9} = 0.058425;
//+
MeshSize {10} = 0.058425;
//+
Cylinder(3) = {20.765908, 0.897464, 0.000000, 0.000000, 0.000000, 0.100000, 1.107593, 2*Pi};
//+
MeshSize {11} = 0.110759;
//+
MeshSize {12} = 0.110759;
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
Save "../msh/cad_172.msh2";
//+
Save "../mesh/cad_172.mesh";
//+
Save "../geo_unrolled/cad_172.geo_unrolled";
