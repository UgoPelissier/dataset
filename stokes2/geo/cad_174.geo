//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.398034, -3.242250, 0.000000, 32.098082, 7.783622, 0.000000};
//+
l = [3.2728332994949536, 0.8291476201051808, 0.8832678584725221, 3.2728332994949536];
//+
MeshSize {1} = 3.272833;
//+
MeshSize {2} = 0.829148;
//+
MeshSize {3} = 0.883268;
//+
MeshSize {4} = 3.272833;
//+
Disk(2) = {23.906576, -0.007441, 0.000000, 0.886987, 0.886987};
//+
c0 = 0.08869873800392636;
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
