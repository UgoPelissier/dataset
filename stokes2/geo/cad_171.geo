//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.351547, -4.148344, 0.000000, 38.348825, 8.381398, 0.000000};
//+
l = [1.4066708676524082, 3.892660700467125, 3.892660700467125, 1.263548939726572];
//+
MeshSize {1} = 1.406671;
//+
MeshSize {2} = 3.892661;
//+
MeshSize {3} = 3.892661;
//+
MeshSize {4} = 1.263549;
//+
Disk(2) = {14.060276, 2.523605, 0.000000, 1.179411, 1.179411};
//+
c0 = 0.117941060781469;
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
