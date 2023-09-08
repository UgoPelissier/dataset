//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.957213, -3.534301, 0.000000, 29.970245, 7.741791, 0.000000};
//+
l = [3.1168758668292362, 0.5100587682794728, 0.4509812998544185, 3.1168758668292362];
//+
MeshSize {1} = 3.116876;
//+
MeshSize {2} = 0.510059;
//+
MeshSize {3} = 0.450981;
//+
MeshSize {4} = 3.116876;
//+
Disk(2) = {26.210847, 0.803025, 0.000000, 1.307128, 1.307128};
//+
c0 = 0.13071282732743802;
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
