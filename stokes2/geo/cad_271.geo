//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.350815, -3.873482, 0.000000, 35.036870, 8.309134, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {24.914833, -1.750458, 0.000000, 0.767343, 0.767343};
//+
c0 = 0.07673430662780802;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.490279, 3.041798, 0.000000, 0.749677, 0.749677};
//+
c1 = 0.07496772419381398;
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
