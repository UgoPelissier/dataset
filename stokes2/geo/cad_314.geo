//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.276201, -4.275031, 0.000000, 38.458462, 9.466377, 0.000000};
//+
l = [3.902277736234499, 3.902277736234499, 1.4355509224257499, 1.4355509224257499, 1.4506335104441135, 1.4506335104441135, 3.902277736234499, 3.902277736234499];
//+
MeshSize {1} = 3.902278;
//+
MeshSize {2} = 3.902278;
//+
MeshSize {3} = 1.435551;
//+
MeshSize {4} = 1.435551;
//+
Disk(2) = {24.133939, 0.213580, 0.000000, 0.919594, 0.919594};
//+
c0 = 0.09195938342252287;
//+
MeshSize {5} = c0;
//+
Disk(3) = {20.747582, -1.477993, 0.000000, 0.910890, 0.910890};
//+
c1 = 0.09108900372992206;
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
