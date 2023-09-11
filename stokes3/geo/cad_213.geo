//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.235521, -3.373676, 0.000000, 39.304827, 8.254865, 1.000000};
//+
MeshSize {1} = 1.117250;
//+
MeshSize {2} = 1.117250;
//+
MeshSize {3} = 1.117250;
//+
MeshSize {4} = 3.975519;
//+
MeshSize {5} = 3.975519;
//+
MeshSize {6} = 3.975519;
//+
MeshSize {7} = 3.975519;
//+
MeshSize {8} = 1.217191;
//+
Cylinder(2) = {12.131230, -0.780773, 0.000000, 0.000000, 0.000000, 1.000000, 1.002520, 2*Pi};
//+
MeshSize {9} = 0.100252;
//+
MeshSize {10} = 0.100252;
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
