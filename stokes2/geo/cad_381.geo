//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.706790, -3.595875, 0.000000, 38.938913, 7.513227, 0.000000};
//+
l = [3.982328302931357, 3.982328302931357, 1.0779682194198617, 0.7570910381440314, 1.0423205967385498, 0.6741843788578565, 3.982328302931357, 3.982328302931357];
//+
MeshSize {1} = 3.982328;
//+
MeshSize {2} = 3.982328;
//+
MeshSize {3} = 1.077968;
//+
MeshSize {4} = 0.757091;
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
