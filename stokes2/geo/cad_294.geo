//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.248219, -4.240736, 0.000000, 34.886378, 9.192958, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {14.208158, -0.439413, 0.000000, 1.248078, 1.248078};
//+
c0 = 0.12480784472087092;
//+
MeshSize {5} = c0;
//+
Disk(3) = {8.778471, -0.348935, 0.000000, 1.303897, 1.303897};
//+
c1 = 0.13038967534438503;
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
