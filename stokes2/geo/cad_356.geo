//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.823688, -3.605040, 0.000000, 29.264349, 9.172346, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {13.409253, 3.710182, 0.000000, 1.113701, 1.113701};
//+
c0 = 0.11137010970607944;
//+
MeshSize {5} = c0;
//+
Disk(3) = {11.610249, 0.369071, 0.000000, 0.782829, 0.782829};
//+
c1 = 0.07828289942793976;
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
