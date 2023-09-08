//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.737118, -3.689002, 0.000000, 33.046463, 8.157451, 0.000000};
//+
l = [3.402890416655786, 0.9227600981185389, 0.5719685510831182, 0.5719685510831182, 0.2433850657662688, 0.2433850657662688, 3.402890416655786, 0.7913098395826303];
//+
MeshSize {1} = 3.402890;
//+
MeshSize {2} = 0.922760;
//+
MeshSize {3} = 0.571969;
//+
MeshSize {4} = 0.571969;
//+
Disk(2) = {30.741518, 2.509027, 0.000000, 1.184640, 1.184640};
//+
c0 = 0.11846402903785194;
//+
MeshSize {5} = c0;
//+
Disk(3) = {9.617403, 1.981664, 0.000000, 1.308809, 1.308809};
//+
c1 = 0.13088086490990372;
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
