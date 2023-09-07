//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.166809, -3.991495, 0.000000, 33.848762, 8.343782, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {11.984505, -1.542306, 0.000000, 0.000000, 0.000000, 1.000000, 1.491463, 2*Pi};
//+
c0 = 0.1491462990618127;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {14.646699, 1.884591, 0.000000, 0.000000, 0.000000, 1.000000, 1.108413, 2*Pi};
//+
c1 = 0.1108413370257039;
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
