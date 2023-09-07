//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.157698, -4.822159, 0.000000, 36.028750, 9.827122, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {23.324876, 1.978476, 0.000000, 1.291466, 1.291466};
//+
c0 = 0.12914662443652128;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.553249, -2.627039, 0.000000, 1.481676, 1.481676};
//+
c1 = 0.14816757109638337;
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
