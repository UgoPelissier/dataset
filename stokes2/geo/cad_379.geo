//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.680606, -3.974764, 0.000000, 33.451676, 9.459471, 0.000000};
//+
l = [1.4969426797216343, 0.7420466173098902, 1.6821967967601972, 1.6821967967601972, 3.445842486474055, 3.445842486474055, 1.6099965016242983, 0.9981194010924634];
//+
MeshSize {1} = 1.496943;
//+
MeshSize {2} = 0.742047;
//+
MeshSize {3} = 1.682197;
//+
MeshSize {4} = 1.682197;
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
