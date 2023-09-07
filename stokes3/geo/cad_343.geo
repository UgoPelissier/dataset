//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.341357, -3.285096, 0.000000, 39.302980, 8.229959, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {20.693753, 1.663242, 0.000000, 0.000000, 0.000000, 1.000000, 0.545778, 2*Pi};
//+
c0 = 0.05457781098550343;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {7.435034, 3.540662, 0.000000, 0.000000, 0.000000, 1.000000, 0.892896, 2*Pi};
//+
c1 = 0.08928964899151735;
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
