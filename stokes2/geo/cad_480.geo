//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.060059, -3.345113, 0.000000, 32.586590, 8.601437, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {5.825539, -0.068319, 0.000000, 0.643873, 0.643873};
//+
c0 = 0.06438726003515136;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.793633, 1.852752, 0.000000, 0.603287, 0.603287};
//+
c1 = 0.06032871159528263;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
