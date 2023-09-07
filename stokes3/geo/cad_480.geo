//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.060059, -3.345113, 0.000000, 32.586590, 8.601437, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {5.825539, -0.068319, 0.000000, 0.000000, 0.000000, 1.000000, 0.643873, 2*Pi};
//+
c0 = 0.06438726003515136;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {29.793633, 1.852752, 0.000000, 0.000000, 0.000000, 1.000000, 0.603287, 2*Pi};
//+
c1 = 0.06032871159528263;
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
