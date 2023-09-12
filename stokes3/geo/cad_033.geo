//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.435836, -4.569903, 0.000000, 32.925459, 9.197855, 1.000000};
//+
MeshSize {1} = 1.216996;
//+
MeshSize {2} = 1.216996;
//+
MeshSize {3} = 3.367679;
//+
MeshSize {4} = 3.367679;
//+
MeshSize {5} = 0.633116;
//+
MeshSize {6} = 0.633116;
//+
MeshSize {7} = 3.367679;
//+
MeshSize {8} = 3.367679;
//+
Cylinder(2) = {13.488528, -3.080870, 0.000000, 0.000000, 0.000000, 1.000000, 0.967390, 2*Pi};
//+
MeshSize {9} = 0.096739;
//+
MeshSize {10} = 0.096739;
//+
Cylinder(3) = {4.257829, 1.124502, 0.000000, 0.000000, 0.000000, 1.000000, 0.526966, 2*Pi};
//+
MeshSize {11} = 0.052697;
//+
MeshSize {12} = 0.052697;
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
Save "../geo_unrolled/cad_033.geo_unrolled";
