//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.127446, -4.436895, 0.000000, 38.862369, 9.490306, 1.000000};
//+
l = [3.9277501713078005, 3.9277501713078005, 0.9144483212658141, 0.9144483212658141, 0.9144483212658141, 0.48670431728029834, 0.48670431728029834, 0.48670431728029834, 3.9277501713078005, 3.9277501713078005];
//+
MeshSize {1} = 3.927750;
//+
MeshSize {2} = 3.927750;
//+
MeshSize {3} = 0.914448;
//+
MeshSize {4} = 0.914448;
//+
MeshSize {5} = 0.914448;
//+
MeshSize {6} = 0.486704;
//+
MeshSize {7} = 0.486704;
//+
MeshSize {8} = 0.486704;
//+
Cylinder(2) = {33.558634, 3.785917, 0.000000, 0.000000, 0.000000, 1.000000, 0.710077, 2*Pi};
//+
c0 = 0.0710076538339754;
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
