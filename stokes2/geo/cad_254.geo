//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.123235, -4.416410, 0.000000, 35.843314, 8.842880, 0.000000};
//+
l = 1.0;
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
Disk(2) = {34.059580, -1.727093, 0.000000, 1.248297, 1.248297};
//+
c0 = 0.12482965867327933;
//+
MeshSize {5} = c0;
//+
Disk(3) = {23.231927, 0.111002, 0.000000, 0.660954, 0.660954};
//+
c1 = 0.0660954357564395;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_254.geo_unrolled";
