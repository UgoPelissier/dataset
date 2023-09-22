//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.810994, -3.668654, 0.000000, 33.530065, 8.565043, 1.000000};
//+
MeshSize {1} = 0.658750;
//+
MeshSize {2} = 0.658750;
//+
MeshSize {3} = 0.574043;
//+
MeshSize {4} = 0.574043;
//+
MeshSize {5} = 2.705230;
//+
MeshSize {6} = 2.705230;
//+
MeshSize {7} = 2.592985;
//+
MeshSize {8} = 2.592985;
//+
Cylinder(2) = {7.700303, 1.595124, 0.000000, 0.000000, 0.000000, 1.000000, 0.655070, 2*Pi};
//+
MeshSize {9} = 0.065507;
//+
MeshSize {10} = 0.065507;
//+
Cylinder(3) = {17.009891, 1.109683, 0.000000, 0.000000, 0.000000, 1.000000, 1.024678, 2*Pi};
//+
MeshSize {11} = 0.102468;
//+
MeshSize {12} = 0.102468;
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
Save "../geo_unrolled/cad_453.geo_unrolled";
