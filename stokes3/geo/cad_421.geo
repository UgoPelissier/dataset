//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.134871, -4.006014, 0.000000, 34.743740, 9.130621, 1.000000};
//+
MeshSize {1} = 0.716731;
//+
MeshSize {2} = 0.716731;
//+
MeshSize {3} = 0.716731;
//+
MeshSize {4} = 0.716731;
//+
MeshSize {5} = 0.716731;
//+
MeshSize {6} = 0.716731;
//+
MeshSize {7} = 3.517612;
//+
MeshSize {8} = 3.517612;
//+
Cylinder(2) = {6.839671, 1.059123, 0.000000, 0.000000, 0.000000, 1.000000, 1.235668, 2*Pi};
//+
MeshSize {9} = 0.123567;
//+
MeshSize {10} = 0.123567;
//+
Cylinder(3) = {11.280149, 3.872644, 0.000000, 0.000000, 0.000000, 1.000000, 0.589595, 2*Pi};
//+
MeshSize {11} = 0.058959;
//+
MeshSize {12} = 0.058959;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
