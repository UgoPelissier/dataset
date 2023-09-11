//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.266863, -3.473185, 0.000000, 32.042251, 8.080456, 1.000000};
//+
MeshSize {1} = 3.256075;
//+
MeshSize {2} = 3.256075;
//+
MeshSize {3} = 1.442472;
//+
MeshSize {4} = 1.442472;
//+
MeshSize {5} = 1.442472;
//+
MeshSize {6} = 0.917900;
//+
MeshSize {7} = 0.917900;
//+
MeshSize {8} = 0.917900;
//+
Cylinder(2) = {22.208570, -1.137233, 0.000000, 0.000000, 0.000000, 1.000000, 1.188141, 2*Pi};
//+
MeshSize {9} = 0.118814;
//+
MeshSize {10} = 0.118814;
//+
Cylinder(3) = {15.398595, 0.018784, 0.000000, 0.000000, 0.000000, 1.000000, 1.104712, 2*Pi};
//+
MeshSize {11} = 0.110471;
//+
MeshSize {12} = 0.110471;
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
