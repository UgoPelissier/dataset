//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.790741, -4.087456, 0.000000, 34.434985, 8.626286, 1.000000};
//+
l = [1.0100325617225436, 1.0100325617225436, 1.0100325617225436, 3.5488800060913697, 3.5488800060913697, 3.5488800060913697, 3.5488800060913697, 0.9451848256761132, 0.9451848256761132, 0.9451848256761132];
//+
MeshSize {1} = 1.010033;
//+
MeshSize {2} = 1.010033;
//+
MeshSize {3} = 1.010033;
//+
MeshSize {4} = 3.548880;
//+
MeshSize {5} = 3.548880;
//+
MeshSize {6} = 3.548880;
//+
MeshSize {7} = 3.548880;
//+
MeshSize {8} = 0.945185;
//+
Cylinder(2) = {10.757241, 1.044016, 0.000000, 0.000000, 0.000000, 1.000000, 1.109631, 2*Pi};
//+
c0 = 0.11096309122451303;
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
