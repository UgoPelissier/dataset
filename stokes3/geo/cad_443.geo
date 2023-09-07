//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.134546, -3.714196, 0.000000, 32.609640, 8.817632, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {17.179113, 1.726752, 0.000000, 0.000000, 0.000000, 1.000000, 1.112054, 2*Pi};
//+
c0 = 0.11120537449284239;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {3.579013, 2.025662, 0.000000, 0.000000, 0.000000, 1.000000, 1.128979, 2*Pi};
//+
c1 = 0.11289785990785556;
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
