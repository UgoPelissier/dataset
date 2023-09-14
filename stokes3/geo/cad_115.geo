//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.841167, -3.641687, 0.000000, 35.966102, 7.578926, 1.000000};
//+
MeshSize {1} = 0.364878;
//+
MeshSize {2} = 0.364878;
//+
MeshSize {3} = 0.664996;
//+
MeshSize {4} = 0.664996;
//+
MeshSize {5} = 0.660632;
//+
MeshSize {6} = 0.660632;
//+
MeshSize {7} = 0.458901;
//+
MeshSize {8} = 0.458901;
//+
Cylinder(2) = {32.126036, 1.787393, 0.000000, 0.000000, 0.000000, 1.000000, 0.562281, 2*Pi};
//+
MeshSize {9} = 0.056228;
//+
MeshSize {10} = 0.056228;
//+
Cylinder(3) = {5.082439, -2.218036, 0.000000, 0.000000, 0.000000, 1.000000, 0.825050, 2*Pi};
//+
MeshSize {11} = 0.082505;
//+
MeshSize {12} = 0.082505;
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
Save "../geo_unrolled/cad_115.geo_unrolled";
