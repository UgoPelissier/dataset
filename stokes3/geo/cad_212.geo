//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.572258, -3.594307, 0.000000, 37.998854, 9.118450, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {26.139459, -2.105600, 0.000000, 0.000000, 0.000000, 1.000000, 0.909507, 2*Pi};
//+
MeshSize {9} = 0.090951;
//+
MeshSize {10} = 0.090951;
//+
Cylinder(3) = {26.120209, 2.957212, 0.000000, 0.000000, 0.000000, 1.000000, 0.897153, 2*Pi};
//+
MeshSize {11} = 0.089715;
//+
MeshSize {12} = 0.089715;
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
Save "../geo_unrolled/cad_212.geo_unrolled";
