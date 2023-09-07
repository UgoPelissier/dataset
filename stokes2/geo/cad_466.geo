//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.997456, -3.169616, 0.000000, 30.345318, 7.679365, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {20.129674, -0.646177, 0.000000, 0.956029, 0.956029};
//+
c0 = 0.0956028654378522;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.727206, 0.801952, 0.000000, 0.925704, 0.925704};
//+
c1 = 0.09257041709367073;
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
