//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.915126, -3.673748, 0.000000, 36.840012, 8.451654, 0.000000};
//+
l = [1.8631125046924901, 1.7019935970790308, 1.7829294548012162, 3.799089526090154];
//+
MeshSize {1} = 1.863113;
//+
MeshSize {2} = 1.701994;
//+
MeshSize {3} = 1.782929;
//+
MeshSize {4} = 3.799090;
//+
Disk(2) = {20.148035, -1.189490, 0.000000, 0.761562, 0.761562};
//+
c0 = 0.07615616273853526;
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
