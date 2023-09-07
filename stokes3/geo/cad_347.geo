//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.672374, -3.966573, 0.000000, 35.828490, 9.895816, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {18.392546, 1.922876, 0.000000, 0.000000, 0.000000, 1.000000, 0.822381, 2*Pi};
//+
c0 = 0.08223813974138552;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {4.212391, -1.462228, 0.000000, 0.000000, 0.000000, 1.000000, 0.980370, 2*Pi};
//+
c1 = 0.09803699223906269;
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
