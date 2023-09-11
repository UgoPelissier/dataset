//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.526393, -3.556260, 0.000000, 33.707670, 8.404570, 1.000000};
//+
l = [3.4491017890617375, 3.4491017890617375, 0.3152784353007569, 0.3152784353007569, 0.3152784353007569, 0.4550564067961771, 0.4550564067961771, 0.4550564067961771, 3.4491017890617375, 3.4491017890617375];
//+
MeshSize {1} = 3.449102;
//+
MeshSize {2} = 3.449102;
//+
MeshSize {3} = 0.315278;
//+
MeshSize {4} = 0.315278;
//+
MeshSize {5} = 0.315278;
//+
MeshSize {6} = 0.455056;
//+
MeshSize {7} = 0.455056;
//+
MeshSize {8} = 0.455056;
//+
Cylinder(2) = {32.442536, -0.115387, 0.000000, 0.000000, 0.000000, 1.000000, 0.726543, 2*Pi};
//+
c0 = 0.07265430465338872;
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
