//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.969542, -3.799357, 0.000000, 30.800824, 8.993960, 0.000000};
//+
l = [3.2087053659274605, 1.5646691181519854, 1.16879553656301, 1.16879553656301, 1.131270320506634, 1.131270320506634, 3.2087053659274605, 1.5339241828771564];
//+
MeshSize {1} = 3.208705;
//+
MeshSize {2} = 1.564669;
//+
MeshSize {3} = 1.168796;
//+
MeshSize {4} = 1.168796;
//+
Disk(2) = {20.048611, 1.221840, 0.000000, 1.063984, 1.063984};
//+
c0 = 0.10639844867212873;
//+
MeshSize {5} = c0;
//+
Disk(3) = {16.630510, 1.254912, 0.000000, 0.809661, 0.809661};
//+
c1 = 0.08096613281139967;
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
