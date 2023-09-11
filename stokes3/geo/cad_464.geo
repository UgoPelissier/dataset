//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.570276, -4.015962, 0.000000, 32.475225, 9.858333, 1.000000};
//+
l = [1.1917171427861548, 1.1917171427861548, 1.1917171427861548, 1.1917171427861548, 1.1917171427861548, 1.1917171427861548, 3.3411103569958893, 3.3411103569958893, 1.1290635698002685, 1.1290635698002685, 1.1290635698002685, 3.3411103569958893, 3.3411103569958893, 0.930338335615523, 0.930338335615523, 0.930338335615523, 1.2253578783851455, 1.2253578783851455, 1.2253578783851455, 1.2253578783851455, 1.2253578783851455, 1.2253578783851455];
//+
MeshSize {1} = 1.191717;
//+
MeshSize {2} = 1.191717;
//+
MeshSize {3} = 1.191717;
//+
MeshSize {4} = 1.191717;
//+
MeshSize {5} = 1.191717;
//+
MeshSize {6} = 1.191717;
//+
MeshSize {7} = 3.341110;
//+
MeshSize {8} = 3.341110;
//+
Cylinder(2) = {12.201156, 0.481926, 0.000000, 0.000000, 0.000000, 1.000000, 0.553127, 2*Pi};
//+
c0 = 0.05531273111763843;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {23.242690, 3.162093, 0.000000, 0.000000, 0.000000, 1.000000, 0.859245, 2*Pi};
//+
c1 = 0.08592446305580312;
//+
MeshSize {11, 12} = c1;
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
