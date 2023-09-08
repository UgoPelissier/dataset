//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.450646, -3.863870, 0.000000, 32.606109, 8.960425, 0.000000};
//+
l = [3.3358977013982662, 0.8195197118117454, 1.3787493453069903, 1.3787493453069903, 1.4870494519236375, 1.4870494519236375, 3.3358977013982662, 0.6541649401751046];
//+
MeshSize {1} = 3.335898;
//+
MeshSize {2} = 0.819520;
//+
MeshSize {3} = 1.378749;
//+
MeshSize {4} = 1.378749;
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
