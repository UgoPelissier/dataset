//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.790741, -4.087456, 0.000000, 34.434985, 8.626286, 0.000000};
//+
l = [1.0100325617225436, 3.5488800060913697, 3.5488800060913697, 0.9451848256761132];
//+
MeshSize {1} = 1.010033;
//+
MeshSize {2} = 3.548880;
//+
MeshSize {3} = 3.548880;
//+
MeshSize {4} = 0.945185;
//+
Disk(2) = {10.757241, 1.044016, 0.000000, 1.109631, 1.109631};
//+
c0 = 0.11096309122451303;
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
