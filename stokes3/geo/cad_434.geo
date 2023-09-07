//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.041826, -3.405790, 0.000000, 33.761915, 8.282244, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {20.671153, 2.008178, 0.000000, 0.000000, 0.000000, 1.000000, 1.093806, 2*Pi};
//+
c0 = 0.10938058013927893;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {17.599887, -0.400781, 0.000000, 0.000000, 0.000000, 1.000000, 1.327010, 2*Pi};
//+
c1 = 0.132701010165935;
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
