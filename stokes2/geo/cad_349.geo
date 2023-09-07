//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.145327, -4.017477, 0.000000, 31.853697, 9.375463, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {5.149776, -2.000578, 0.000000, 0.750561, 0.750561};
//+
c0 = 0.07505610074581831;
//+
MeshSize {5} = c0;
//+
Disk(3) = {26.859399, 1.786915, 0.000000, 0.795141, 0.795141};
//+
c1 = 0.0795140565961606;
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
