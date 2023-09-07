//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.799462, -3.741317, 0.000000, 33.837382, 9.478562, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {11.438771, 3.256325, 0.000000, 0.000000, 0.000000, 1.000000, 1.451644, 2*Pi};
//+
c0 = 0.1451644041732608;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {1.940991, 2.612793, 0.000000, 0.000000, 0.000000, 1.000000, 0.571385, 2*Pi};
//+
c1 = 0.05713846947490569;
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
