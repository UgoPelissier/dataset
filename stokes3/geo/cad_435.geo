//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.042416, -3.248678, 0.000000, 35.144611, 8.489028, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {25.868449, 0.489825, 0.000000, 0.000000, 0.000000, 1.000000, 1.016127, 2*Pi};
//+
c0 = 0.10161266830947985;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {16.233435, -0.658221, 0.000000, 0.000000, 0.000000, 1.000000, 1.113134, 2*Pi};
//+
c1 = 0.11131342792438925;
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
