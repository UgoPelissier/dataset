//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.914548, -3.599433, 0.000000, 31.734254, 8.116569, 1.000000};
//+
l = [1.6409113333629688, 1.6409113333629688, 1.6409113333629688, 1.333369233839871, 1.333369233839871, 1.333369233839871, 1.4618786213458825, 1.4618786213458825, 1.4618786213458825, 3.290005960945459, 3.290005960945459];
//+
MeshSize {1} = 1.640911;
//+
MeshSize {2} = 1.640911;
//+
MeshSize {3} = 1.640911;
//+
MeshSize {4} = 1.333369;
//+
MeshSize {5} = 1.333369;
//+
MeshSize {6} = 1.333369;
//+
MeshSize {7} = 1.461879;
//+
MeshSize {8} = 1.461879;
//+
Cylinder(2) = {18.327997, -1.925724, 0.000000, 0.000000, 0.000000, 1.000000, 1.084586, 2*Pi};
//+
c0 = 0.10845859902235407;
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
