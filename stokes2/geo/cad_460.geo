//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.547949, -3.202001, 0.000000, 33.290216, 8.351785, 0.000000};
//+
l = [3.4094859766421433, 1.4205196889424916, 0.6155084624087851, 0.6155084624087851, 0.6391710793799785, 0.6391710793799785, 3.4094859766421433, 1.34032455169024];
//+
MeshSize {1} = 3.409486;
//+
MeshSize {2} = 1.420520;
//+
MeshSize {3} = 0.615508;
//+
MeshSize {4} = 0.615508;
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
