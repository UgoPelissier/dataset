//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.068286, -3.651134, 0.000000, 32.959918, 8.186684, 1.000000};
//+
l = [0.330860742064809, 0.330860742064809, 0.330860742064809, 3.328089139576583, 3.328089139576583, 3.328089139576583, 3.328089139576583, 0.4008643905998905, 0.4008643905998905, 0.4008643905998905];
//+
MeshSize {1} = 0.330861;
//+
MeshSize {2} = 0.330861;
//+
MeshSize {3} = 0.330861;
//+
MeshSize {4} = 3.328089;
//+
MeshSize {5} = 3.328089;
//+
MeshSize {6} = 3.328089;
//+
MeshSize {7} = 3.328089;
//+
MeshSize {8} = 0.400864;
//+
Cylinder(2) = {1.855264, 0.060065, 0.000000, 0.000000, 0.000000, 1.000000, 0.810408, 2*Pi};
//+
c0 = 0.0810407850606311;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
