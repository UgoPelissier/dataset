//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.266863, -3.473185, 0.000000, 32.042251, 8.080456, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {22.208570, -1.137233, 0.000000, 0.000000, 0.000000, 1.000000, 1.188141, 2*Pi};
//+
c0 = 0.11881412847327161;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {15.398595, 0.018784, 0.000000, 0.000000, 0.000000, 1.000000, 1.104712, 2*Pi};
//+
c1 = 0.11047117596027514;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
