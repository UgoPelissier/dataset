//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.659649, -3.913818, 0.000000, 36.582219, 8.356678, 0.000000};
//+
l = [1.6157433880834722, 1.6157433880834722, 3.7475528659052046, 0.5633648372941762, 3.7475528659052046, 0.5918315984593596, 1.5911904540634072, 1.5911904540634072];
//+
MeshSize {1} = 1.615743;
//+
MeshSize {2} = 1.615743;
//+
MeshSize {3} = 3.747553;
//+
MeshSize {4} = 0.563365;
//+
Disk(2) = {16.888075, 0.757082, 0.000000, 0.729814, 0.729814};
//+
c0 = 0.07298137871787798;
//+
MeshSize {5} = c0;
//+
Disk(3) = {32.012800, 0.036431, 0.000000, 0.919795, 0.919795};
//+
c1 = 0.09197950126716062;
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
