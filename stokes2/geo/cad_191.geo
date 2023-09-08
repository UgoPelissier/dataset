//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.570282, -3.647259, 0.000000, 34.961948, 7.683829, 0.000000};
//+
l = [1.7473216077716107, 1.7727974324375038, 1.6948919433877934, 1.6682799361321727];
//+
MeshSize {1} = 1.747322;
//+
MeshSize {2} = 1.772797;
//+
MeshSize {3} = 1.694892;
//+
MeshSize {4} = 1.668280;
//+
Disk(2) = {17.917323, 2.031636, 0.000000, 0.779721, 0.779721};
//+
c0 = 0.0779720677623982;
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
