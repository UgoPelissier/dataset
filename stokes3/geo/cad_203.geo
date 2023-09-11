//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.676622, -4.393278, 0.000000, 39.124983, 9.545944, 1.000000};
//+
l = [4.008676901832859, 4.008676901832859, 0.6730873616201762, 0.6730873616201762, 0.6730873616201762, 0.20910690317573596, 0.20910690317573596, 0.20910690317573596, 4.008676901832859, 4.008676901832859];
//+
MeshSize {1} = 4.008677;
//+
MeshSize {2} = 4.008677;
//+
MeshSize {3} = 0.673087;
//+
MeshSize {4} = 0.673087;
//+
MeshSize {5} = 0.673087;
//+
MeshSize {6} = 0.209107;
//+
MeshSize {7} = 0.209107;
//+
MeshSize {8} = 0.209107;
//+
Cylinder(2) = {37.994965, 2.907846, 0.000000, 0.000000, 0.000000, 1.000000, 0.790453, 2*Pi};
//+
c0 = 0.07904526519929356;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
