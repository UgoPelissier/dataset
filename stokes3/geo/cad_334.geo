//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.787308, -4.296289, 0.000000, 33.766071, 8.947416, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {12.735319, -1.083180, 0.000000, 0.000000, 0.000000, 1.000000, 0.567667, 2*Pi};
//+
MeshSize {9} = 0.056767;
//+
MeshSize {10} = 0.056767;
//+
Cylinder(3) = {14.765482, 0.451586, 0.000000, 0.000000, 0.000000, 1.000000, 0.792833, 2*Pi};
//+
MeshSize {11} = 0.079283;
//+
MeshSize {12} = 0.079283;
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
Save "../geo_unrolled/cad_334.geo_unrolled";
