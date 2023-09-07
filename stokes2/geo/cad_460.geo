//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.547949, -3.202001, 0.000000, 33.290216, 8.351785, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {27.541414, 0.759764, 0.000000, 1.284314, 1.284314};
//+
c0 = 0.12843139766171965;
//+
MeshSize {5} = c0;
//+
Disk(3) = {14.731570, 2.399692, 0.000000, 1.044527, 1.044527};
//+
c1 = 0.10445268801907687;
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
