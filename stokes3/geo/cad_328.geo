//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.383316, -4.178651, 0.000000, 31.610826, 8.432754, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {6.097338, 1.490474, 0.000000, 0.000000, 0.000000, 1.000000, 1.126687, 2*Pi};
//+
c0 = 0.11266869286716226;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {4.125030, -0.981990, 0.000000, 0.000000, 0.000000, 1.000000, 1.088671, 2*Pi};
//+
c1 = 0.10886706881680719;
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
