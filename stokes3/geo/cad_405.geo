//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.157698, -4.822159, 0.000000, 36.028750, 9.827122, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {23.324876, 1.978476, 0.000000, 0.000000, 0.000000, 1.000000, 1.291466, 2*Pi};
//+
c0 = 0.12914662443652128;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {4.553249, -2.627039, 0.000000, 0.000000, 0.000000, 1.000000, 1.481676, 2*Pi};
//+
c1 = 0.14816757109638337;
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
