//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.577560, -3.838958, 0.000000, 38.343796, 8.302201, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {7.494137, -1.854300, 0.000000, 0.000000, 0.000000, 1.000000, 0.819150, 2*Pi};
//+
c0 = 0.08191497905014984;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {20.007938, -2.436054, 0.000000, 0.000000, 0.000000, 1.000000, 0.850318, 2*Pi};
//+
c1 = 0.08503181379241173;
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
