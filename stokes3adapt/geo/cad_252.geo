//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072589, -3.805567, 0.000000, 30.988766, 9.467230, 1.000000};
//+
MeshSize {1} = 0.871432;
//+
MeshSize {2} = 0.871432;
//+
MeshSize {3} = 0.782319;
//+
MeshSize {4} = 0.782319;
//+
MeshSize {5} = 1.476449;
//+
MeshSize {6} = 1.476449;
//+
MeshSize {7} = 1.760854;
//+
MeshSize {8} = 1.760854;
//+
Cylinder(2) = {13.594814, -0.992987, 0.000000, 0.000000, 0.000000, 1.000000, 1.160723, 2*Pi};
//+
MeshSize {9} = 0.116072;
//+
MeshSize {10} = 0.116072;
//+
Cylinder(3) = {12.144759, 2.816355, 0.000000, 0.000000, 0.000000, 1.000000, 1.045724, 2*Pi};
//+
MeshSize {11} = 0.104572;
//+
MeshSize {12} = 0.104572;
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
Save "../geo_unrolled/cad_252.geo_unrolled";
