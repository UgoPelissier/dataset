//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.103927, -4.432526, 0.000000, 36.923502, 9.940560, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {28.703912, 1.456900, 0.000000, 1.439751, 1.439751};
//+
c0 = 0.14397511115083136;
//+
MeshSize {5} = c0;
//+
Disk(3) = {8.429133, -2.399174, 0.000000, 0.888033, 0.888033};
//+
c1 = 0.08880326036447708;
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
