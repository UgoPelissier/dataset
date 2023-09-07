//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.591581, -3.825533, 0.000000, 32.200128, 9.325044, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {24.140563, -2.362461, 0.000000, 0.827296, 0.827296};
//+
c0 = 0.0827295947330063;
//+
MeshSize {5} = c0;
//+
Disk(3) = {19.001714, 3.653763, 0.000000, 1.091772, 1.091772};
//+
c1 = 0.10917716320324865;
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
