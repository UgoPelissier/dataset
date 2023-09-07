//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.671748, -3.727382, 0.000000, 32.811331, 8.301846, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {25.371260, 2.928594, 0.000000, 0.000000, 0.000000, 1.000000, 0.612372, 2*Pi};
//+
c0 = 0.061237174078510426;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {29.088503, 2.657703, 0.000000, 0.000000, 0.000000, 1.000000, 0.513733, 2*Pi};
//+
c1 = 0.05137332926934314;
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
