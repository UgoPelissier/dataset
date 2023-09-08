//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.962131, -2.835544, 0.000000, 37.805300, 7.523168, 0.000000};
//+
l = [0.5147843105523554, 3.894949643952376, 3.894949643952376, 0.6553995389017063];
//+
MeshSize {1} = 0.514784;
//+
MeshSize {2} = 3.894950;
//+
MeshSize {3} = 3.894950;
//+
MeshSize {4} = 0.655400;
//+
Disk(2) = {6.299485, -0.309093, 0.000000, 0.757265, 0.757265};
//+
c0 = 0.07572648802295191;
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
