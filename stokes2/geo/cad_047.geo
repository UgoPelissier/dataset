//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.667578, -3.949657, 0.000000, 35.286945, 9.875099, 0.000000};
//+
l = [3.629197063549848, 0.5173226118572897, 0.49778193022361994, 3.629197063549848];
//+
MeshSize {1} = 3.629197;
//+
MeshSize {2} = 0.517323;
//+
MeshSize {3} = 0.497782;
//+
MeshSize {4} = 3.629197;
//+
Disk(2) = {32.050794, 1.112453, 0.000000, 1.219274, 1.219274};
//+
c0 = 0.12192739612759672;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
