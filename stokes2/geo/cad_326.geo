//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.583575, -3.917482, 0.000000, 30.128583, 9.723565, 0.000000};
//+
l = [3.1094590211036577, 0.9656822660106461, 3.1094590211036577, 3.1094590211036577, 1.462136333343459, 1.462136333343459, 1.407310207602086, 0.8578693107540879];
//+
MeshSize {1} = 3.109459;
//+
MeshSize {2} = 0.965682;
//+
MeshSize {3} = 3.109459;
//+
MeshSize {4} = 3.109459;
//+
Disk(2) = {15.370740, 3.573388, 0.000000, 0.881669, 0.881669};
//+
c0 = 0.08816692198055871;
//+
MeshSize {5} = c0;
//+
Disk(3) = {9.716819, 2.097066, 0.000000, 1.278941, 1.278941};
//+
c1 = 0.12789411774338144;
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
