//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.821592, -3.396736, 0.000000, 35.595353, 8.726489, 0.000000};
//+
l = [0.7317819407291181, 3.667740111153732, 3.667740111153732, 0.5308715199040704];
//+
MeshSize {1} = 0.731782;
//+
MeshSize {2} = 3.667740;
//+
MeshSize {3} = 3.667740;
//+
MeshSize {4} = 0.530872;
//+
Disk(2) = {6.126555, 2.574101, 0.000000, 0.669266, 0.669266};
//+
c0 = 0.06692657108601817;
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
