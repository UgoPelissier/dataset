//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.685493, -3.392459, 0.000000, 38.194801, 8.383989, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {37.698851, -1.840621, 0.000000, 0.000000, 0.000000, 1.000000, 0.531173, 2*Pi};
//+
c0 = 0.05311731646891863;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {22.199934, -0.925875, 0.000000, 0.000000, 0.000000, 1.000000, 1.095192, 2*Pi};
//+
c1 = 0.10951918670299994;
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
