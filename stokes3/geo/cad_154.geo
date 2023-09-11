//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.808624, -3.740786, 0.000000, 37.542510, 8.419602, 1.000000};
//+
l = [0.9340492914966512, 0.9340492914966512, 0.9340492914966512, 3.858149685576299, 3.858149685576299, 3.858149685576299, 3.858149685576299, 1.0467771812110584, 1.0467771812110584, 1.0467771812110584];
//+
MeshSize {1} = 0.934049;
//+
MeshSize {2} = 0.934049;
//+
MeshSize {3} = 0.934049;
//+
MeshSize {4} = 3.858150;
//+
MeshSize {5} = 3.858150;
//+
MeshSize {6} = 3.858150;
//+
MeshSize {7} = 3.858150;
//+
MeshSize {8} = 1.046777;
//+
Cylinder(2) = {10.806265, -0.994587, 0.000000, 0.000000, 0.000000, 1.000000, 1.027460, 2*Pi};
//+
c0 = 0.10274597884614828;
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
