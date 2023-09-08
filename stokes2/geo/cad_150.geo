//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.526393, -3.556260, 0.000000, 33.707670, 8.404570, 0.000000};
//+
l = [3.4491017890617375, 0.3152784353007569, 0.4550564067961771, 3.4491017890617375];
//+
MeshSize {1} = 3.449102;
//+
MeshSize {2} = 0.315278;
//+
MeshSize {3} = 0.455056;
//+
MeshSize {4} = 3.449102;
//+
Disk(2) = {32.442536, -0.115387, 0.000000, 0.726543, 0.726543};
//+
c0 = 0.07265430465338872;
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
