//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.706790, -3.595875, 0.000000, 38.938913, 7.513227, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {28.212113, 0.732333, 0.000000, 1.445716, 1.445716};
//+
c0 = 0.14457158578456078;
//+
MeshSize {5} = c0;
//+
Disk(3) = {32.518544, 1.054040, 0.000000, 0.938972, 0.938972};
//+
c1 = 0.09389720485412359;
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
