//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.039861, -3.630931, 0.000000, 33.183355, 8.125920, 0.000000};
//+
l = [3.34707292017249, 1.0488641294228127, 1.207309211483922, 3.34707292017249];
//+
MeshSize {1} = 3.347073;
//+
MeshSize {2} = 1.048864;
//+
MeshSize {3} = 1.207309;
//+
MeshSize {4} = 3.347073;
//+
Disk(2) = {22.335356, -1.872935, 0.000000, 0.540232, 0.540232};
//+
c0 = 0.05402316731446162;
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
