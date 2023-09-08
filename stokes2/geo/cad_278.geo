//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.628080, -4.456834, 0.000000, 33.489019, 9.216415, 0.000000};
//+
l = [3.4426908351568333, 3.4426908351568333, 0.9077681443379169, 0.2379998244412275, 0.8433089701010484, 0.5949751935590387, 3.4426908351568333, 3.4426908351568333];
//+
MeshSize {1} = 3.442691;
//+
MeshSize {2} = 3.442691;
//+
MeshSize {3} = 0.907768;
//+
MeshSize {4} = 0.238000;
//+
Disk(2) = {25.671263, 0.825550, 0.000000, 0.884032, 0.884032};
//+
c0 = 0.08840319093431208;
//+
MeshSize {5} = c0;
//+
Disk(3) = {32.863252, -1.709611, 0.000000, 0.639830, 0.639830};
//+
c1 = 0.06398301888092338;
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
