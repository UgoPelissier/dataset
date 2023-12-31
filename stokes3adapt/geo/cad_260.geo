//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.464701, -3.867297, 0.000000, 33.503150, 8.755418, 1.000000};
//+
MeshSize {1} = 1.483583;
//+
MeshSize {2} = 1.483583;
//+
MeshSize {3} = 1.764406;
//+
MeshSize {4} = 1.764406;
//+
MeshSize {5} = 0.891135;
//+
MeshSize {6} = 0.891135;
//+
MeshSize {7} = 0.759973;
//+
MeshSize {8} = 0.759973;
//+
Cylinder(2) = {22.509765, 3.046727, 0.000000, 0.000000, 0.000000, 1.000000, 1.306540, 2*Pi};
//+
MeshSize {9} = 0.130654;
//+
MeshSize {10} = 0.130654;
//+
Cylinder(3) = {16.423572, -1.236304, 0.000000, 0.000000, 0.000000, 1.000000, 0.718819, 2*Pi};
//+
MeshSize {11} = 0.071882;
//+
MeshSize {12} = 0.071882;
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
Save "../geo_unrolled/cad_260.geo_unrolled";
