//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.450646, -3.863870, 0.000000, 32.606109, 8.960425, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {18.695314, -1.214196, 0.000000, 0.816333, 0.816333};
//+
c0 = 0.08163331594963291;
//+
MeshSize {5} = c0;
//+
Disk(3) = {7.322921, 2.148855, 0.000000, 0.936124, 0.936124};
//+
c1 = 0.09361240660896886;
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
