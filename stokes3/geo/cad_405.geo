//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.755244, -4.090285, 0.000000, 31.104820, 8.454424, 1.000000};
//+
MeshSize {1} = 1.388959;
//+
MeshSize {2} = 1.388959;
//+
MeshSize {3} = 1.323178;
//+
MeshSize {4} = 1.323178;
//+
MeshSize {5} = 0.474514;
//+
MeshSize {6} = 0.474514;
//+
MeshSize {7} = 0.694309;
//+
MeshSize {8} = 0.694309;
//+
Cylinder(2) = {26.589938, -1.657791, 0.000000, 0.000000, 0.000000, 1.000000, 1.059281, 2*Pi};
//+
MeshSize {9} = 0.105928;
//+
MeshSize {10} = 0.105928;
//+
Cylinder(3) = {15.055192, 1.300400, 0.000000, 0.000000, 0.000000, 1.000000, 1.392687, 2*Pi};
//+
MeshSize {11} = 0.139269;
//+
MeshSize {12} = 0.139269;
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
Save "../geo_unrolled/cad_405.geo_unrolled";
