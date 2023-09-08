//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.266863, -3.473185, 0.000000, 32.042251, 8.080456, 0.000000};
//+
l = [3.2560747196361435, 1.4424717646408283, 0.9179001546069522, 0.9179001546069522, 1.043168237050813, 1.043168237050813, 3.2560747196361435, 1.470742122124883];
//+
MeshSize {1} = 3.256075;
//+
MeshSize {2} = 1.442472;
//+
MeshSize {3} = 0.917900;
//+
MeshSize {4} = 0.917900;
//+
Disk(2) = {22.208570, -1.137233, 0.000000, 1.188141, 1.188141};
//+
c0 = 0.11881412847327161;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.398595, 0.018784, 0.000000, 1.104712, 1.104712};
//+
c1 = 0.11047117596027514;
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
