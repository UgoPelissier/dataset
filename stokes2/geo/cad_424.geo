//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.729924, -3.631638, 0.000000, 36.257629, 7.545971, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {21.563926, 1.233980, 0.000000, 0.543482, 0.543482};
//+
c0 = 0.054348200749945896;
//+
MeshSize {5} = c0;
//+
Disk(3) = {6.299707, -1.629828, 0.000000, 1.289188, 1.289188};
//+
c1 = 0.12891884945074222;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
