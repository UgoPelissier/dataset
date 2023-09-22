//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.572258, -3.594307, 0.000000, 37.998854, 9.118450, 1.000000};
//+
MeshSize {1} = 2.488948;
//+
MeshSize {2} = 2.488948;
//+
MeshSize {3} = 2.512733;
//+
MeshSize {4} = 2.512733;
//+
MeshSize {5} = 0.637029;
//+
MeshSize {6} = 0.637029;
//+
MeshSize {7} = 0.648256;
//+
MeshSize {8} = 0.648256;
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
