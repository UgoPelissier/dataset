//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.951522, -4.271513, 0.000000, 32.753778, 8.608458, 1.000000};
//+
l = [3.397901714780792, 3.397901714780792, 0.6919068439923799, 0.6919068439923799, 0.6919068439923799, 0.15002403066869913, 0.15002403066869913, 0.15002403066869913, 3.397901714780792, 3.397901714780792];
//+
MeshSize {1} = 3.397902;
//+
MeshSize {2} = 3.397902;
//+
MeshSize {3} = 0.691907;
//+
MeshSize {4} = 0.691907;
//+
MeshSize {5} = 0.691907;
//+
MeshSize {6} = 0.150024;
//+
MeshSize {7} = 0.150024;
//+
MeshSize {8} = 0.150024;
//+
Cylinder(2) = {32.038747, 3.059878, 0.000000, 0.000000, 0.000000, 1.000000, 0.599355, 2*Pi};
//+
c0 = 0.059935462460613036;
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
