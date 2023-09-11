//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.247512, -4.575603, 0.000000, 32.508985, 9.843526, 1.000000};
//+
l = [1.3900724786187189, 1.3900724786187189, 1.3900724786187189, 3.3124188510367896, 3.3124188510367896, 3.3124188510367896, 3.3124188510367896, 1.235930467861334, 1.235930467861334, 1.235930467861334];
//+
MeshSize {1} = 1.390072;
//+
MeshSize {2} = 1.390072;
//+
MeshSize {3} = 1.390072;
//+
MeshSize {4} = 3.312419;
//+
MeshSize {5} = 3.312419;
//+
MeshSize {6} = 3.312419;
//+
MeshSize {7} = 3.312419;
//+
MeshSize {8} = 1.235930;
//+
Cylinder(2) = {13.732854, 2.618904, 0.000000, 0.000000, 0.000000, 1.000000, 1.383757, 2*Pi};
//+
c0 = 0.13837566218453745;
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
