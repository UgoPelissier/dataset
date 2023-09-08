//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.068286, -3.651134, 0.000000, 32.959918, 8.186684, 0.000000};
//+
l = [0.330860742064809, 3.328089139576583, 3.328089139576583, 0.4008643905998905];
//+
MeshSize {1} = 0.330861;
//+
MeshSize {2} = 3.328089;
//+
MeshSize {3} = 3.328089;
//+
MeshSize {4} = 0.400864;
//+
Disk(2) = {1.855264, 0.060065, 0.000000, 0.810408, 0.810408};
//+
c0 = 0.0810407850606311;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
