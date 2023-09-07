//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.101290, -4.729940, 0.000000, 32.210312, 9.971665, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {9.564951, -0.356214, 0.000000, 0.000000, 0.000000, 1.000000, 0.599809, 2*Pi};
//+
c0 = 0.059980891505761746;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {25.900855, -1.867622, 0.000000, 0.000000, 0.000000, 1.000000, 1.238540, 2*Pi};
//+
c1 = 0.12385401957921763;
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
