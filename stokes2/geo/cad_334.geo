//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.101290, -4.729940, 0.000000, 32.210312, 9.971665, 0.000000};
//+
l = [0.9825657590008806, 0.9825657590008806, 3.269400869509766, 0.5782183092032884, 3.269400869509766, 0.8334364083421248, 1.039554419584634, 1.039554419584634];
//+
MeshSize {1} = 0.982566;
//+
MeshSize {2} = 0.982566;
//+
MeshSize {3} = 3.269401;
//+
MeshSize {4} = 0.578218;
//+
Disk(2) = {9.564951, -0.356214, 0.000000, 0.599809, 0.599809};
//+
c0 = 0.059980891505761746;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.900855, -1.867622, 0.000000, 1.238540, 1.238540};
//+
c1 = 0.12385401957921763;
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
