//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.667578, -3.949657, 0.000000, 35.286945, 9.875099, 1.000000};
//+
l = [3.629197063549848, 3.629197063549848, 0.5173226118572897, 0.5173226118572897, 0.5173226118572897, 0.49778193022361994, 0.49778193022361994, 0.49778193022361994, 3.629197063549848, 3.629197063549848];
//+
MeshSize {1} = 3.629197;
//+
MeshSize {2} = 3.629197;
//+
MeshSize {3} = 0.517323;
//+
MeshSize {4} = 0.517323;
//+
MeshSize {5} = 0.517323;
//+
MeshSize {6} = 0.497782;
//+
MeshSize {7} = 0.497782;
//+
MeshSize {8} = 0.497782;
//+
Cylinder(2) = {32.050794, 1.112453, 0.000000, 0.000000, 0.000000, 1.000000, 1.219274, 2*Pi};
//+
c0 = 0.12192739612759672;
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
