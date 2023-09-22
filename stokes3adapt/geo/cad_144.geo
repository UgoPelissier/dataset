//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.396703, -3.318104, 0.000000, 29.899554, 8.183318, 1.000000};
//+
MeshSize {1} = 5.502361;
//+
MeshSize {2} = 5.502361;
//+
MeshSize {3} = 5.276802;
//+
MeshSize {4} = 5.276802;
//+
MeshSize {5} = 0.156706;
//+
MeshSize {6} = 0.156706;
//+
MeshSize {7} = 0.336902;
//+
MeshSize {8} = 0.336902;
//+
Cylinder(2) = {28.513105, -0.557710, 0.000000, 0.000000, 0.000000, 1.000000, 1.179695, 2*Pi};
//+
MeshSize {9} = 0.117969;
//+
MeshSize {10} = 0.117969;
//+
Cylinder(3) = {24.178084, 1.743935, 0.000000, 0.000000, 0.000000, 1.000000, 0.582038, 2*Pi};
//+
MeshSize {11} = 0.058204;
//+
MeshSize {12} = 0.058204;
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
Save "../geo_unrolled/cad_144.geo_unrolled";
