//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.583702, -3.813300, 0.000000, 36.669540, 9.220109, 0.000000};
//+
l = [3.753740337244439, 0.9210802856838094, 0.7500884037254708, 3.753740337244439];
//+
MeshSize {1} = 3.753740;
//+
MeshSize {2} = 0.921080;
//+
MeshSize {3} = 0.750088;
//+
MeshSize {4} = 3.753740;
//+
Disk(2) = {29.165712, 2.546244, 0.000000, 1.077634, 1.077634};
//+
c0 = 0.1077634395864183;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
