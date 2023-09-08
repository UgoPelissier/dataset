//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.951522, -4.271513, 0.000000, 32.753778, 8.608458, 0.000000};
//+
l = [3.397901714780792, 0.6919068439923799, 0.15002403066869913, 3.397901714780792];
//+
MeshSize {1} = 3.397902;
//+
MeshSize {2} = 0.691907;
//+
MeshSize {3} = 0.150024;
//+
MeshSize {4} = 3.397902;
//+
Disk(2) = {32.038747, 3.059878, 0.000000, 0.599355, 0.599355};
//+
c0 = 0.059935462460613036;
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
