//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.487581, -3.912091, 0.000000, 31.280662, 9.086247, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {5.356309, 2.403165, 0.000000, 0.000000, 0.000000, 1.000000, 0.989577, 2*Pi};
//+
c0 = 0.09895770906300165;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {20.124786, -0.877791, 0.000000, 0.000000, 0.000000, 1.000000, 1.465328, 2*Pi};
//+
c1 = 0.14653278401300332;
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
