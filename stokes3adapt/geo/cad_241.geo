//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.145327, -4.017477, 0.000000, 31.853697, 9.375463, 1.000000};
//+
MeshSize {1} = 0.736881;
//+
MeshSize {2} = 0.736881;
//+
MeshSize {3} = 2.160016;
//+
MeshSize {4} = 2.160016;
//+
MeshSize {5} = 1.344702;
//+
MeshSize {6} = 1.344702;
//+
MeshSize {7} = 0.866693;
//+
MeshSize {8} = 0.866693;
//+
Cylinder(2) = {5.149776, -2.000578, 0.000000, 0.000000, 0.000000, 1.000000, 0.750561, 2*Pi};
//+
MeshSize {9} = 0.075056;
//+
MeshSize {10} = 0.075056;
//+
Cylinder(3) = {26.859399, 1.786915, 0.000000, 0.000000, 0.000000, 1.000000, 0.795141, 2*Pi};
//+
MeshSize {11} = 0.079514;
//+
MeshSize {12} = 0.079514;
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
Save "../geo_unrolled/cad_241.geo_unrolled";
