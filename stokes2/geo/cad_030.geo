//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.833745, -4.280501, 0.000000, 35.283033, 9.968083, 0.000000};
//+
l = [1.0158302322956814, 3.6459049580570198, 3.6459049580570198, 0.9333823002806736];
//+
MeshSize {1} = 1.015830;
//+
MeshSize {2} = 3.645905;
//+
MeshSize {3} = 3.645905;
//+
MeshSize {4} = 0.933382;
//+
Disk(2) = {10.812596, 1.628672, 0.000000, 1.438930, 1.438930};
//+
c0 = 0.1438930003927104;
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
