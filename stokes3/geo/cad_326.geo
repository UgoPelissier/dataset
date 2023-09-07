//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.583575, -3.917482, 0.000000, 30.128583, 9.723565, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {15.370740, 3.573388, 0.000000, 0.000000, 0.000000, 1.000000, 0.881669, 2*Pi};
//+
c0 = 0.08816692198055871;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {9.716819, 2.097066, 0.000000, 0.000000, 0.000000, 1.000000, 1.278941, 2*Pi};
//+
c1 = 0.12789411774338144;
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
