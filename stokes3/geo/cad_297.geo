//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.042696, -4.006360, 0.000000, 31.637196, 8.934710, 1.000000};
//+
MeshSize {1} = 3.199332;
//+
MeshSize {2} = 3.199332;
//+
MeshSize {3} = 0.589896;
//+
MeshSize {4} = 0.589896;
//+
MeshSize {5} = 0.484610;
//+
MeshSize {6} = 0.484610;
//+
MeshSize {7} = 0.589896;
//+
MeshSize {8} = 0.589896;
//+
Cylinder(2) = {26.030905, -0.938156, 0.000000, 0.000000, 0.000000, 1.000000, 0.529482, 2*Pi};
//+
MeshSize {9} = 0.052948;
//+
MeshSize {10} = 0.052948;
//+
Cylinder(3) = {5.928927, -1.966936, 0.000000, 0.000000, 0.000000, 1.000000, 1.383424, 2*Pi};
//+
MeshSize {11} = 0.138342;
//+
MeshSize {12} = 0.138342;
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
Save "../geo_unrolled/cad_297.geo_unrolled";
