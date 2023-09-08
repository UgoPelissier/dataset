//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.127446, -4.436895, 0.000000, 38.862369, 9.490306, 0.000000};
//+
l = [3.9277501713078005, 0.9144483212658141, 0.48670431728029834, 3.9277501713078005];
//+
MeshSize {1} = 3.927750;
//+
MeshSize {2} = 0.914448;
//+
MeshSize {3} = 0.486704;
//+
MeshSize {4} = 3.927750;
//+
Disk(2) = {33.558634, 3.785917, 0.000000, 0.710077, 0.710077};
//+
c0 = 0.0710076538339754;
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
