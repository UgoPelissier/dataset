//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.570276, -4.015962, 0.000000, 32.475225, 9.858333, 0.000000};
//+
l = [1.1917171427861548, 1.1917171427861548, 3.3411103569958893, 1.1290635698002685, 3.3411103569958893, 0.930338335615523, 1.2253578783851455, 1.2253578783851455];
//+
MeshSize {1} = 1.191717;
//+
MeshSize {2} = 1.191717;
//+
MeshSize {3} = 3.341110;
//+
MeshSize {4} = 1.129064;
//+
Disk(2) = {12.201156, 0.481926, 0.000000, 0.553127, 0.553127};
//+
c0 = 0.05531273111763843;
//+
MeshSize {5} = c0;
//+
Disk(3) = {23.242690, 3.162093, 0.000000, 0.859245, 0.859245};
//+
c1 = 0.08592446305580312;
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
