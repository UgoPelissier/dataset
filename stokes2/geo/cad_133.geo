//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.007730, -3.478245, 0.000000, 31.749218, 8.450519, 0.000000};
//+
l = [3.203680014731078, 0.8700142550906502, 0.9308962350406065, 3.203680014731078];
//+
MeshSize {1} = 3.203680;
//+
MeshSize {2} = 0.870014;
//+
MeshSize {3} = 0.930896;
//+
MeshSize {4} = 3.203680;
//+
Disk(2) = {22.346452, 0.002217, 0.000000, 1.333354, 1.333354};
//+
c0 = 0.13333542024198783;
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
