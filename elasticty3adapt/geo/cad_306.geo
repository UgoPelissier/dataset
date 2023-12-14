//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.563145, -4.693756, 0.000000, 37.093937, 9.815367, 1.000000};
//+
MeshSize {1} = 1.067612;
//+
MeshSize {2} = 1.067612;
//+
MeshSize {3} = 0.931298;
//+
MeshSize {4} = 0.931298;
//+
MeshSize {5} = 1.068834;
//+
MeshSize {6} = 1.068834;
//+
MeshSize {7} = 1.074425;
//+
MeshSize {8} = 1.074425;
//+
Cylinder(2) = {14.953272, 2.221348, 0.000000, 0.000000, 0.000000, 0.100000, 1.482956, 2*Pi};
//+
MeshSize {9} = 0.148296;
//+
MeshSize {10} = 0.148296;
//+
Cylinder(3) = {22.434690, 0.172842, 0.000000, 0.000000, 0.000000, 0.100000, 1.493412, 2*Pi};
//+
MeshSize {11} = 0.149341;
//+
MeshSize {12} = 0.149341;
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
Save "../msh/cad_306.msh2";
//+
Save "../mesh/cad_306.mesh";
//+
Save "../geo_unrolled/cad_306.geo_unrolled";
