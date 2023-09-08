//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.370705, -3.612662, 0.000000, 35.254542, 8.053185, 0.000000};
//+
l = [3.5852080714098755, 1.4627974652864741, 1.518576588292599, 3.5852080714098755];
//+
MeshSize {1} = 3.585208;
//+
MeshSize {2} = 1.462797;
//+
MeshSize {3} = 1.518577;
//+
MeshSize {4} = 3.585208;
//+
Disk(2) = {20.632110, -0.663759, 0.000000, 0.652411, 0.652411};
//+
c0 = 0.06524114101841433;
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
