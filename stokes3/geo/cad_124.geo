//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.561586, -3.862352, 0.000000, 30.660726, 8.383995, 1.000000};
//+
l = [3.1502470757057233, 3.1502470757057233, 1.0661399295153606, 1.0661399295153606, 1.0661399295153606, 0.9358068236913768, 0.9358068236913768, 0.9358068236913768, 3.1502470757057233, 3.1502470757057233];
//+
MeshSize {1} = 3.150247;
//+
MeshSize {2} = 3.150247;
//+
MeshSize {3} = 1.066140;
//+
MeshSize {4} = 1.066140;
//+
MeshSize {5} = 1.066140;
//+
MeshSize {6} = 0.935807;
//+
MeshSize {7} = 0.935807;
//+
MeshSize {8} = 0.935807;
//+
Cylinder(2) = {20.773470, 2.098382, 0.000000, 0.000000, 0.000000, 1.000000, 1.368092, 2*Pi};
//+
c0 = 0.1368092148869065;
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
