//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.562138, -4.045344, 0.000000, 33.421881, 9.226358, 0.000000};
//+
l = [0.6119853900906609, 0.6119853900906609, 3.429569898496931, 1.2244375979402677, 3.429569898496931, 1.2952165647543161, 0.1745396224627256, 0.1745396224627256];
//+
MeshSize {1} = 0.611985;
//+
MeshSize {2} = 0.611985;
//+
MeshSize {3} = 3.429570;
//+
MeshSize {4} = 1.224438;
//+
Disk(2) = {2.040277, 2.895398, 0.000000, 0.976539, 0.976539};
//+
c0 = 0.0976539424352137;
//+
MeshSize {5} = c0;
//+
Disk(3) = {21.405249, -0.462657, 0.000000, 0.834657, 0.834657};
//+
c1 = 0.08346565385145628;
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
