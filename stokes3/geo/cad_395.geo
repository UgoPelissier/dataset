//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.520688, -4.334692, 0.000000, 32.411007, 9.923937, 1.000000};
//+
MeshSize {1} = 1.444025;
//+
MeshSize {2} = 1.444025;
//+
MeshSize {3} = 3.330342;
//+
MeshSize {4} = 3.330342;
//+
MeshSize {5} = 0.744080;
//+
MeshSize {6} = 0.744080;
//+
MeshSize {7} = 3.330342;
//+
MeshSize {8} = 3.330342;
//+
Cylinder(2) = {14.617064, 1.435839, 0.000000, 0.000000, 0.000000, 1.000000, 0.791517, 2*Pi};
//+
MeshSize {9} = 0.079152;
//+
MeshSize {10} = 0.079152;
//+
Cylinder(3) = {2.073034, 3.689657, 0.000000, 0.000000, 0.000000, 1.000000, 0.732328, 2*Pi};
//+
MeshSize {11} = 0.073233;
//+
MeshSize {12} = 0.073233;
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
Save "../geo_unrolled/cad_395.geo_unrolled";
