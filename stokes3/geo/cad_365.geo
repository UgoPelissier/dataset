//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.450646, -3.863870, 0.000000, 32.606109, 8.960425, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {18.695314, -1.214196, 0.000000, 0.000000, 0.000000, 1.000000, 0.816333, 2*Pi};
//+
c0 = 0.08163331594963291;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {7.322921, 2.148855, 0.000000, 0.000000, 0.000000, 1.000000, 0.936124, 2*Pi};
//+
c1 = 0.09361240660896886;
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
