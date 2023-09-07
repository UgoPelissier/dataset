//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.964635, -3.873624, 0.000000, 32.118442, 8.162520, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {27.339415, 1.607020, 0.000000, 0.000000, 0.000000, 1.000000, 0.540330, 2*Pi};
//+
c0 = 0.05403298081086634;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {27.654963, -1.405638, 0.000000, 0.000000, 0.000000, 1.000000, 0.591213, 2*Pi};
//+
c1 = 0.05912129037913486;
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
