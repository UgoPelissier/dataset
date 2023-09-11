//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.248219, -4.240736, 0.000000, 34.886378, 9.192958, 1.000000};
//+
MeshSize {1} = 1.322016;
//+
MeshSize {2} = 1.322016;
//+
MeshSize {3} = 3.543399;
//+
MeshSize {4} = 3.543399;
//+
MeshSize {5} = 0.807221;
//+
MeshSize {6} = 0.807221;
//+
MeshSize {7} = 3.543399;
//+
MeshSize {8} = 3.543399;
//+
Cylinder(2) = {14.208158, -0.439413, 0.000000, 0.000000, 0.000000, 1.000000, 1.248078, 2*Pi};
//+
MeshSize {9} = 0.124808;
//+
MeshSize {10} = 0.124808;
//+
Cylinder(3) = {8.778471, -0.348935, 0.000000, 0.000000, 0.000000, 1.000000, 1.303897, 2*Pi};
//+
MeshSize {11} = 0.130390;
//+
MeshSize {12} = 0.130390;
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
