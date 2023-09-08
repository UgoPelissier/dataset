//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.945322, -3.214055, 0.000000, 37.934457, 7.777416, 0.000000};
//+
l = [1.303424402444884, 0.6355708347177054, 3.9073767044226124, 3.9073767044226124, 3.9073767044226124, 3.9073767044226124, 1.2892576934931705, 0.6595802766882145];
//+
MeshSize {1} = 1.303424;
//+
MeshSize {2} = 0.635571;
//+
MeshSize {3} = 3.907377;
//+
MeshSize {4} = 3.907377;
//+
Disk(2) = {14.214092, 0.926550, 0.000000, 0.865571, 0.865571};
//+
c0 = 0.08655711439731195;
//+
MeshSize {5} = c0;
//+
Disk(3) = {6.814358, 0.457238, 0.000000, 0.567006, 0.567006};
//+
c1 = 0.05670059141573176;
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
