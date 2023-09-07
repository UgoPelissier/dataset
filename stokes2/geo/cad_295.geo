//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.139793, -4.966252, 0.000000, 38.163930, 9.956418, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {5.006880, 3.222628, 0.000000, 0.872240, 0.872240};
//+
c0 = 0.08722397438159978;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.142743, 1.440545, 0.000000, 1.082324, 1.082324};
//+
c1 = 0.10823238014140633;
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
