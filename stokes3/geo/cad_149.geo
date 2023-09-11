//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.376679, -3.795984, 0.000000, 37.755169, 9.175291, 1.000000};
//+
l = [3.8406826356590344, 3.8406826356590344, 0.7667823724012353, 0.7667823724012353, 0.7667823724012353, 0.6074360440352315, 0.6074360440352315, 0.6074360440352315, 3.8406826356590344, 3.8406826356590344];
//+
MeshSize {1} = 3.840683;
//+
MeshSize {2} = 3.840683;
//+
MeshSize {3} = 0.766782;
//+
MeshSize {4} = 0.766782;
//+
MeshSize {5} = 0.766782;
//+
MeshSize {6} = 0.607436;
//+
MeshSize {7} = 0.607436;
//+
MeshSize {8} = 0.607436;
//+
Cylinder(2) = {31.609737, 2.190827, 0.000000, 0.000000, 0.000000, 1.000000, 1.185414, 2*Pi};
//+
c0 = 0.11854144402775764;
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
