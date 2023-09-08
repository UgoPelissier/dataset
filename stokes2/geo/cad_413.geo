//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.166809, -3.991495, 0.000000, 33.848762, 8.343782, 0.000000};
//+
l = [1.0577358417412437, 1.0577358417412437, 3.4270450767226777, 3.4270450767226777, 3.4270450767226777, 3.4270450767226777, 1.1714753997541336, 1.1714753997541336];
//+
MeshSize {1} = 1.057736;
//+
MeshSize {2} = 1.057736;
//+
MeshSize {3} = 3.427045;
//+
MeshSize {4} = 3.427045;
//+
Disk(2) = {11.984505, -1.542306, 0.000000, 1.491463, 1.491463};
//+
c0 = 0.1491462990618127;
//+
MeshSize {5} = c0;
//+
Disk(3) = {14.646699, 1.884591, 0.000000, 1.108413, 1.108413};
//+
c1 = 0.1108413370257039;
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
