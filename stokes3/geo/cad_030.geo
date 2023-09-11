//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.833745, -4.280501, 0.000000, 35.283033, 9.968083, 1.000000};
//+
l = [1.0158302322956814, 1.0158302322956814, 1.0158302322956814, 3.6459049580570198, 3.6459049580570198, 3.6459049580570198, 3.6459049580570198, 0.9333823002806736, 0.9333823002806736, 0.9333823002806736];
//+
MeshSize {1} = 1.015830;
//+
MeshSize {2} = 1.015830;
//+
MeshSize {3} = 1.015830;
//+
MeshSize {4} = 3.645905;
//+
MeshSize {5} = 3.645905;
//+
MeshSize {6} = 3.645905;
//+
MeshSize {7} = 3.645905;
//+
MeshSize {8} = 0.933382;
//+
Cylinder(2) = {10.812596, 1.628672, 0.000000, 0.000000, 0.000000, 1.000000, 1.438930, 2*Pi};
//+
c0 = 0.1438930003927104;
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
