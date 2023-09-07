//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.487642, -3.740649, 0.000000, 33.206710, 7.607021, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {15.825369, -0.345028, 0.000000, 0.000000, 0.000000, 1.000000, 0.546437, 2*Pi};
//+
c0 = 0.054643745750117816;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {8.872264, 0.337372, 0.000000, 0.000000, 0.000000, 1.000000, 0.673850, 2*Pi};
//+
c1 = 0.067384981644645;
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
