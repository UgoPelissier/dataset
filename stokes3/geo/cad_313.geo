//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.757189, -4.792327, 0.000000, 39.086491, 9.930412, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {24.991000, 3.317831, 0.000000, 0.000000, 0.000000, 1.000000, 0.757886, 2*Pi};
//+
c0 = 0.07578863599877766;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {15.463298, -1.019307, 0.000000, 0.000000, 0.000000, 1.000000, 0.826127, 2*Pi};
//+
c1 = 0.08261268053697361;
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
