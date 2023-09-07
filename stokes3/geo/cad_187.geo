//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.466473, -3.603543, 0.000000, 32.012716, 7.742029, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {9.425851, -0.896915, 0.000000, 0.000000, 0.000000, 1.000000, 1.115377, 2*Pi};
//+
c0 = 0.11153774441639688;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
