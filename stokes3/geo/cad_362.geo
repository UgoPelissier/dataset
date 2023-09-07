//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.123235, -4.416410, 0.000000, 35.843314, 8.842880, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {34.059580, -1.727093, 0.000000, 0.000000, 0.000000, 1.000000, 1.248297, 2*Pi};
//+
c0 = 0.12482965867327933;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {23.231927, 0.111002, 0.000000, 0.000000, 0.000000, 1.000000, 0.660954, 2*Pi};
//+
c1 = 0.0660954357564395;
//+
MeshSize {11, 12} = c1;
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
