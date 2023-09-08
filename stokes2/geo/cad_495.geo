//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.591581, -3.825533, 0.000000, 32.200128, 9.325044, 0.000000};
//+
l = [3.3121522883740044, 3.3121522883740044, 0.7946694452872505, 0.7946694452872505, 1.0862568695954236, 1.0862568695954236, 3.3121522883740044, 3.3121522883740044];
//+
MeshSize {1} = 3.312152;
//+
MeshSize {2} = 3.312152;
//+
MeshSize {3} = 0.794669;
//+
MeshSize {4} = 0.794669;
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
