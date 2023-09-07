//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.935308, -3.546600, 0.000000, 33.894011, 8.770832, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {20.916609, 3.356561, 0.000000, 0.000000, 0.000000, 1.000000, 1.004110, 2*Pi};
//+
c0 = 0.10041101193531646;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {14.375644, 1.754292, 0.000000, 0.000000, 0.000000, 1.000000, 1.248427, 2*Pi};
//+
c1 = 0.12484268658779162;
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
