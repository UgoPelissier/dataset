//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.039861, -3.630931, 0.000000, 33.183355, 8.125920, 1.000000};
//+
MeshSize {1} = 3.347073;
//+
MeshSize {2} = 3.347073;
//+
MeshSize {3} = 3.347073;
//+
MeshSize {4} = 3.347073;
//+
MeshSize {5} = 1.048864;
//+
MeshSize {6} = 1.048864;
//+
MeshSize {7} = 1.207309;
//+
MeshSize {8} = 1.207309;
//+
Cylinder(2) = {22.335356, -1.872935, 0.000000, 0.000000, 0.000000, 1.000000, 0.540232, 2*Pi};
//+
MeshSize {9} = 0.054023;
//+
MeshSize {10} = 0.054023;
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
