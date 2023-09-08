//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.298791, -4.724680, 0.000000, 37.355953, 9.749218, 0.000000};
//+
l = [3.7968955054200837, 3.7968955054200837, 0.9508668456664293, 0.9508668456664293, 0.651510021320916, 0.651510021320916, 3.7968955054200837, 3.7968955054200837];
//+
MeshSize {1} = 3.796896;
//+
MeshSize {2} = 3.796896;
//+
MeshSize {3} = 0.950867;
//+
MeshSize {4} = 0.950867;
//+
Disk(2) = {30.328254, 2.947810, 0.000000, 1.100033, 1.100033};
//+
c0 = 0.11000333011455717;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.872100, 1.762227, 0.000000, 1.221283, 1.221283};
//+
c1 = 0.12212831975926107;
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
