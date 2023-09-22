//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.178879, -3.412100, 0.000000, 36.947465, 8.004830, 1.000000};
//+
MeshSize {1} = 3.365248;
//+
MeshSize {2} = 3.365248;
//+
MeshSize {3} = 3.548862;
//+
MeshSize {4} = 3.548862;
//+
MeshSize {5} = 0.641204;
//+
MeshSize {6} = 0.641204;
//+
MeshSize {7} = 0.334915;
//+
MeshSize {8} = 0.334915;
//+
Cylinder(2) = {33.679626, 2.373322, 0.000000, 0.000000, 0.000000, 1.000000, 1.218375, 2*Pi};
//+
MeshSize {9} = 0.121837;
//+
MeshSize {10} = 0.121837;
//+
Cylinder(3) = {13.474761, 0.190653, 0.000000, 0.000000, 0.000000, 1.000000, 0.884087, 2*Pi};
//+
MeshSize {11} = 0.088409;
//+
MeshSize {12} = 0.088409;
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
Save "../geo_unrolled/cad_329.geo_unrolled";
