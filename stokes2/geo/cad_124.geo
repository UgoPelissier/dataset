//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.561586, -3.862352, 0.000000, 30.660726, 8.383995, 0.000000};
//+
l = [3.1502470757057233, 1.0661399295153606, 0.9358068236913768, 3.1502470757057233];
//+
MeshSize {1} = 3.150247;
//+
MeshSize {2} = 1.066140;
//+
MeshSize {3} = 0.935807;
//+
MeshSize {4} = 3.150247;
//+
Disk(2) = {20.773470, 2.098382, 0.000000, 1.368092, 1.368092};
//+
c0 = 0.1368092148869065;
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
