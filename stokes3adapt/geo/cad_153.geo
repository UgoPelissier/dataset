//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.258738, -3.964972, 0.000000, 34.929239, 8.951296, 1.000000};
//+
MeshSize {1} = 2.718703;
//+
MeshSize {2} = 2.718703;
//+
MeshSize {3} = 2.905748;
//+
MeshSize {4} = 2.905748;
//+
MeshSize {5} = 0.598572;
//+
MeshSize {6} = 0.598572;
//+
MeshSize {7} = 0.578759;
//+
MeshSize {8} = 0.578759;
//+
Cylinder(2) = {20.241370, -0.485352, 0.000000, 0.000000, 0.000000, 1.000000, 0.891134, 2*Pi};
//+
MeshSize {9} = 0.089113;
//+
MeshSize {10} = 0.089113;
//+
Cylinder(3) = {27.177161, 0.792995, 0.000000, 0.000000, 0.000000, 1.000000, 1.000466, 2*Pi};
//+
MeshSize {11} = 0.100047;
//+
MeshSize {12} = 0.100047;
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
Save "../geo_unrolled/cad_153.geo_unrolled";
