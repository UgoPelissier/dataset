//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.935308, -3.546600, 0.000000, 33.894011, 8.770832, 0.000000};
//+
l = [3.510432139838708, 1.3199482243569816, 1.4527056692365696, 1.4527056692365696, 1.3033400433471019, 1.3033400433471019, 3.510432139838708, 1.2632607364038821];
//+
MeshSize {1} = 3.510432;
//+
MeshSize {2} = 1.319948;
//+
MeshSize {3} = 1.452706;
//+
MeshSize {4} = 1.452706;
//+
Disk(2) = {20.916609, 3.356561, 0.000000, 1.004110, 1.004110};
//+
c0 = 0.10041101193531646;
//+
MeshSize {5} = c0;
//+
Disk(3) = {14.375644, 1.754292, 0.000000, 1.248427, 1.248427};
//+
c1 = 0.12484268658779162;
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
