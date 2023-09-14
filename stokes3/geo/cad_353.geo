//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.236154, -4.250967, 0.000000, 30.542790, 9.827158, 1.000000};
//+
MeshSize {1} = 1.348654;
//+
MeshSize {2} = 1.348654;
//+
MeshSize {3} = 1.356679;
//+
MeshSize {4} = 1.356679;
//+
MeshSize {5} = 1.264607;
//+
MeshSize {6} = 1.264607;
//+
MeshSize {7} = 1.320275;
//+
MeshSize {8} = 1.320275;
//+
Cylinder(2) = {17.672909, -0.131386, 0.000000, 0.000000, 0.000000, 1.000000, 1.092163, 2*Pi};
//+
MeshSize {9} = 0.109216;
//+
MeshSize {10} = 0.109216;
//+
Cylinder(3) = {14.247833, 0.541356, 0.000000, 0.000000, 0.000000, 1.000000, 1.322023, 2*Pi};
//+
MeshSize {11} = 0.132202;
//+
MeshSize {12} = 0.132202;
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
Save "../geo_unrolled/cad_353.geo_unrolled";
