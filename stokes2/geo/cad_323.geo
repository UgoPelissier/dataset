//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.655401, -3.275738, 0.000000, 31.938862, 8.546414, 0.000000};
//+
l = [0.62128769557546, 0.62128769557546, 3.2873184538601894, 0.46312648606227325, 3.2873184538601894, 0.3864665372533106, 0.6973831952733909, 0.6973831952733909];
//+
MeshSize {1} = 0.621288;
//+
MeshSize {2} = 0.621288;
//+
MeshSize {3} = 3.287318;
//+
MeshSize {4} = 0.463126;
//+
Disk(2) = {7.247764, 0.296006, 0.000000, 1.284897, 1.284897};
//+
c0 = 0.1284897055296117;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.547563, 1.468859, 0.000000, 1.007315, 1.007315};
//+
c1 = 0.10073148556068152;
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
