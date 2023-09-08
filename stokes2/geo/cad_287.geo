//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.321802, -3.672816, 0.000000, 36.881077, 8.178145, 0.000000};
//+
l = [0.26811040262941505, 0.26811040262941505, 3.742692527196774, 1.8644975362437248, 3.742692527196774, 3.742692527196774, 0.5112505035316927, 0.5112505035316927];
//+
MeshSize {1} = 0.268110;
//+
MeshSize {2} = 0.268110;
//+
MeshSize {3} = 3.742693;
//+
MeshSize {4} = 1.864498;
//+
Disk(2) = {2.897623, -1.040193, 0.000000, 1.002041, 1.002041};
//+
c0 = 0.10020409425595829;
//+
MeshSize {5} = c0;
//+
Disk(3) = {17.302843, -1.780326, 0.000000, 1.344847, 1.344847};
//+
c1 = 0.1344846504261328;
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
