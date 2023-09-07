//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.570638, -4.017679, 0.000000, 33.604141, 9.369672, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {28.754294, -2.005785, 0.000000, 0.000000, 0.000000, 1.000000, 1.347301, 2*Pi};
//+
c0 = 0.13473010914205488;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {27.623637, 0.212973, 0.000000, 0.000000, 0.000000, 1.000000, 0.525272, 2*Pi};
//+
c1 = 0.05252721412544721;
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
