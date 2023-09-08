//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.567821, -3.610982, 0.000000, 39.074362, 8.091929, 0.000000};
//+
l = [0.8703526408204084, 0.8703526408204084, 3.9848117685414772, 1.2265213107785244, 3.9848117685414772, 1.132237823515447, 1.0160106609082837, 1.0160106609082837];
//+
MeshSize {1} = 0.870353;
//+
MeshSize {2} = 0.870353;
//+
MeshSize {3} = 3.984812;
//+
MeshSize {4} = 1.226521;
//+
Disk(2) = {10.346250, -1.496935, 0.000000, 1.300817, 1.300817};
//+
c0 = 0.13008168219994953;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.778293, 1.904459, 0.000000, 0.818058, 0.818058};
//+
c1 = 0.08180577192661007;
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
