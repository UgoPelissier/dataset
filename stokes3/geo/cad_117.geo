//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.778017, -3.866560, 0.000000, 30.312523, 8.759597, 1.000000};
//+
MeshSize {1} = 3.139752;
//+
MeshSize {2} = 3.139752;
//+
MeshSize {3} = 3.139752;
//+
MeshSize {4} = 3.139752;
//+
MeshSize {5} = 0.483352;
//+
MeshSize {6} = 0.483352;
//+
MeshSize {7} = 0.530628;
//+
MeshSize {8} = 0.530628;
//+
Cylinder(2) = {26.954905, 0.187904, 0.000000, 0.000000, 0.000000, 1.000000, 0.958043, 2*Pi};
//+
MeshSize {9} = 0.095804;
//+
MeshSize {10} = 0.095804;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_117.geo_unrolled";
