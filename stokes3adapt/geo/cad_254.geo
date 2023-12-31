//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.123235, -4.416410, 0.000000, 35.843314, 8.842880, 1.000000};
//+
MeshSize {1} = 5.160519;
//+
MeshSize {2} = 5.160519;
//+
MeshSize {3} = 5.133624;
//+
MeshSize {4} = 5.133624;
//+
MeshSize {5} = 0.154673;
//+
MeshSize {6} = 0.154673;
//+
MeshSize {7} = 0.392170;
//+
MeshSize {8} = 0.392170;
//+
Cylinder(2) = {34.059580, -1.727093, 0.000000, 0.000000, 0.000000, 1.000000, 1.248297, 2*Pi};
//+
MeshSize {9} = 0.124830;
//+
MeshSize {10} = 0.124830;
//+
Cylinder(3) = {23.231927, 0.111002, 0.000000, 0.000000, 0.000000, 1.000000, 0.660954, 2*Pi};
//+
MeshSize {11} = 0.066095;
//+
MeshSize {12} = 0.066095;
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
Save "../geo_unrolled/cad_254.geo_unrolled";
