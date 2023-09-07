//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.242424, -3.865114, 0.000000, 37.922521, 8.482338, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {4.346523, 0.541602, 0.000000, 0.000000, 0.000000, 1.000000, 1.092227, 2*Pi};
//+
c0 = 0.10922270342503855;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {20.823904, 1.541348, 0.000000, 0.000000, 0.000000, 1.000000, 1.050099, 2*Pi};
//+
c1 = 0.10500991569974727;
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
