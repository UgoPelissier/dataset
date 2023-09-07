//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.482926, -4.144792, 0.000000, 33.898733, 9.241908, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {10.964637, -1.845941, 0.000000, 0.000000, 0.000000, 1.000000, 1.310186, 2*Pi};
//+
c0 = 0.13101859369186983;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {3.956822, 3.227090, 0.000000, 0.000000, 0.000000, 1.000000, 1.147970, 2*Pi};
//+
c1 = 0.11479699172777136;
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
