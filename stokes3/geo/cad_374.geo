//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.659649, -3.913818, 0.000000, 36.582219, 8.356678, 1.000000};
//+
l = [1.6157433880834722, 1.6157433880834722, 1.6157433880834722, 1.6157433880834722, 1.6157433880834722, 1.6157433880834722, 3.7475528659052046, 3.7475528659052046, 0.5633648372941762, 0.5633648372941762, 0.5633648372941762, 3.7475528659052046, 3.7475528659052046, 0.5918315984593596, 0.5918315984593596, 0.5918315984593596, 1.5911904540634072, 1.5911904540634072, 1.5911904540634072, 1.5911904540634072, 1.5911904540634072, 1.5911904540634072];
//+
MeshSize {1} = 1.615743;
//+
MeshSize {2} = 1.615743;
//+
MeshSize {3} = 1.615743;
//+
MeshSize {4} = 1.615743;
//+
MeshSize {5} = 1.615743;
//+
MeshSize {6} = 1.615743;
//+
MeshSize {7} = 3.747553;
//+
MeshSize {8} = 3.747553;
//+
Cylinder(2) = {16.888075, 0.757082, 0.000000, 0.000000, 0.000000, 1.000000, 0.729814, 2*Pi};
//+
c0 = 0.07298137871787798;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {32.012800, 0.036431, 0.000000, 0.000000, 0.000000, 1.000000, 0.919795, 2*Pi};
//+
c1 = 0.09197950126716062;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
