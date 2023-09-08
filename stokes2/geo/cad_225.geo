//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.247512, -4.575603, 0.000000, 32.508985, 9.843526, 0.000000};
//+
l = [1.3900724786187189, 3.3124188510367896, 3.3124188510367896, 1.235930467861334];
//+
MeshSize {1} = 1.390072;
//+
MeshSize {2} = 3.312419;
//+
MeshSize {3} = 3.312419;
//+
MeshSize {4} = 1.235930;
//+
Disk(2) = {13.732854, 2.618904, 0.000000, 1.383757, 1.383757};
//+
c0 = 0.13837566218453745;
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
