//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.680606, -3.974764, 0.000000, 33.451676, 9.459471, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {16.467725, -1.227717, 0.000000, 1.054911, 1.054911};
//+
c0 = 0.10549113562983287;
//+
MeshSize {5} = c0;
//+
Disk(3) = {8.662010, -1.828960, 0.000000, 0.844356, 0.844356};
//+
c1 = 0.08443563042148537;
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
