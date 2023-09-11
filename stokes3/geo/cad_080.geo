//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.039861, -3.630931, 0.000000, 33.183355, 8.125920, 1.000000};
//+
l = [3.34707292017249, 3.34707292017249, 1.0488641294228127, 1.0488641294228127, 1.0488641294228127, 1.207309211483922, 1.207309211483922, 1.207309211483922, 3.34707292017249, 3.34707292017249];
//+
MeshSize {1} = 3.347073;
//+
MeshSize {2} = 3.347073;
//+
MeshSize {3} = 1.048864;
//+
MeshSize {4} = 1.048864;
//+
MeshSize {5} = 1.048864;
//+
MeshSize {6} = 1.207309;
//+
MeshSize {7} = 1.207309;
//+
MeshSize {8} = 1.207309;
//+
Cylinder(2) = {22.335356, -1.872935, 0.000000, 0.000000, 0.000000, 1.000000, 0.540232, 2*Pi};
//+
c0 = 0.05402316731446162;
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
