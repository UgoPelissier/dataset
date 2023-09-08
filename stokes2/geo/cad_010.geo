//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.914548, -3.599433, 0.000000, 31.734254, 8.116569, 0.000000};
//+
l = [1.6409113333629688, 1.333369233839871, 1.4618786213458825, 3.290005960945459];
//+
MeshSize {1} = 1.640911;
//+
MeshSize {2} = 1.333369;
//+
MeshSize {3} = 1.461879;
//+
MeshSize {4} = 3.290006;
//+
Disk(2) = {18.327997, -1.925724, 0.000000, 1.084586, 1.084586};
//+
c0 = 0.10845859902235407;
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
