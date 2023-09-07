//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.672374, -3.966573, 0.000000, 35.828490, 9.895816, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {18.392546, 1.922876, 0.000000, 0.822381, 0.822381};
//+
c0 = 0.08223813974138552;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.212391, -1.462228, 0.000000, 0.980370, 0.980370};
//+
c1 = 0.09803699223906269;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
