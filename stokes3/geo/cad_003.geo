//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.957213, -3.534301, 0.000000, 29.970245, 7.741791, 1.000000};
//+
l = [3.1168758668292362, 3.1168758668292362, 0.5100587682794728, 0.5100587682794728, 0.5100587682794728, 0.4509812998544185, 0.4509812998544185, 0.4509812998544185, 3.1168758668292362, 3.1168758668292362];
//+
MeshSize {1} = 3.116876;
//+
MeshSize {2} = 3.116876;
//+
MeshSize {3} = 0.510059;
//+
MeshSize {4} = 0.510059;
//+
MeshSize {5} = 0.510059;
//+
MeshSize {6} = 0.450981;
//+
MeshSize {7} = 0.450981;
//+
MeshSize {8} = 0.450981;
//+
Cylinder(2) = {26.210847, 0.803025, 0.000000, 0.000000, 0.000000, 1.000000, 1.307128, 2*Pi};
//+
c0 = 0.13071282732743802;
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
