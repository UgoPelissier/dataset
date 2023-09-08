//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.111549, -3.764306, 0.000000, 35.806152, 7.877839, 0.000000};
//+
l = [1.633004039731949, 1.633004039731949, 3.6133036827570066, 1.00495460619186, 3.6133036827570066, 1.02514299335662, 1.5259173583415069, 1.5259173583415069];
//+
MeshSize {1} = 1.633004;
//+
MeshSize {2} = 1.633004;
//+
MeshSize {3} = 3.613304;
//+
MeshSize {4} = 1.004955;
//+
Disk(2) = {16.042755, 2.425119, 0.000000, 0.761253, 0.761253};
//+
c0 = 0.07612525879034975;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.170223, -0.118810, 0.000000, 1.299372, 1.299372};
//+
c1 = 0.12993720064117673;
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
