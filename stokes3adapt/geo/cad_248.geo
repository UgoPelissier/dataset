//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.823688, -3.605040, 0.000000, 29.264349, 9.172346, 1.000000};
//+
MeshSize {1} = 0.783790;
//+
MeshSize {2} = 0.783790;
//+
MeshSize {3} = 0.818794;
//+
MeshSize {4} = 0.818794;
//+
MeshSize {5} = 1.958022;
//+
MeshSize {6} = 1.958022;
//+
MeshSize {7} = 1.506525;
//+
MeshSize {8} = 1.506525;
//+
Cylinder(2) = {13.409253, 3.710182, 0.000000, 0.000000, 0.000000, 1.000000, 1.113701, 2*Pi};
//+
MeshSize {9} = 0.111370;
//+
MeshSize {10} = 0.111370;
//+
Cylinder(3) = {11.610249, 0.369071, 0.000000, 0.000000, 0.000000, 1.000000, 0.782829, 2*Pi};
//+
MeshSize {11} = 0.078283;
//+
MeshSize {12} = 0.078283;
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
Save "../geo_unrolled/cad_248.geo_unrolled";
