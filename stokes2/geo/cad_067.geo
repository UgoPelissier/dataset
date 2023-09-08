//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.880320, -3.061505, 0.000000, 31.882366, 7.525378, 0.000000};
//+
l = [1.474247224385856, 1.6296295378118986, 1.575355710120959, 1.414484071941049];
//+
MeshSize {1} = 1.474247;
//+
MeshSize {2} = 1.629630;
//+
MeshSize {3} = 1.575356;
//+
MeshSize {4} = 1.414484;
//+
Disk(2) = {16.007122, 1.942787, 0.000000, 1.190609, 1.190609};
//+
c0 = 0.11906093394465232;
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
