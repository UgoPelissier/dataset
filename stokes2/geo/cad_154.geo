//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.808624, -3.740786, 0.000000, 37.542510, 8.419602, 0.000000};
//+
l = [0.9340492914966512, 3.858149685576299, 3.858149685576299, 1.0467771812110584];
//+
MeshSize {1} = 0.934049;
//+
MeshSize {2} = 3.858150;
//+
MeshSize {3} = 3.858150;
//+
MeshSize {4} = 1.046777;
//+
Disk(2) = {10.806265, -0.994587, 0.000000, 1.027460, 1.027460};
//+
c0 = 0.10274597884614828;
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
