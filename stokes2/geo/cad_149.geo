//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.376679, -3.795984, 0.000000, 37.755169, 9.175291, 0.000000};
//+
l = [3.8406826356590344, 0.7667823724012353, 0.6074360440352315, 3.8406826356590344];
//+
MeshSize {1} = 3.840683;
//+
MeshSize {2} = 0.766782;
//+
MeshSize {3} = 0.607436;
//+
MeshSize {4} = 3.840683;
//+
Disk(2) = {31.609737, 2.190827, 0.000000, 1.185414, 1.185414};
//+
c0 = 0.11854144402775764;
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
