//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.298791, -4.724680, 0.000000, 37.355953, 9.749218, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {30.328254, 2.947810, 0.000000, 0.000000, 0.000000, 1.000000, 1.100033, 2*Pi};
//+
c0 = 0.11000333011455717;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {24.872100, 1.762227, 0.000000, 0.000000, 0.000000, 1.000000, 1.221283, 2*Pi};
//+
c1 = 0.12212831975926107;
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
