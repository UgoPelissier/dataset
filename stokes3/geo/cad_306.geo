//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.563145, -4.693756, 0.000000, 37.093937, 9.815367, 1.000000};
//+
MeshSize {1} = 1.448246;
//+
MeshSize {2} = 1.448246;
//+
MeshSize {3} = 1.448798;
//+
MeshSize {4} = 1.448798;
//+
MeshSize {5} = 1.448246;
//+
MeshSize {6} = 1.448246;
//+
MeshSize {7} = 3.797553;
//+
MeshSize {8} = 3.797553;
//+
Cylinder(2) = {14.953272, 2.221348, 0.000000, 0.000000, 0.000000, 1.000000, 1.482956, 2*Pi};
//+
MeshSize {9} = 0.148296;
//+
MeshSize {10} = 0.148296;
//+
Cylinder(3) = {22.434690, 0.172842, 0.000000, 0.000000, 0.000000, 1.000000, 1.493412, 2*Pi};
//+
MeshSize {11} = 0.149341;
//+
MeshSize {12} = 0.149341;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_306.geo_unrolled";
