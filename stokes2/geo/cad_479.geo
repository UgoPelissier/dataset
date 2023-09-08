//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.276384, -4.285367, 0.000000, 38.757531, 9.424701, 0.000000};
//+
l = [1.1822205607860439, 1.1822205607860439, 3.9317334131169144, 0.8430973926897423, 3.9317334131169144, 0.987640469031944, 1.4317811192400693, 1.4317811192400693];
//+
MeshSize {1} = 1.182221;
//+
MeshSize {2} = 1.182221;
//+
MeshSize {3} = 3.931733;
//+
MeshSize {4} = 0.843097;
//+
Disk(2) = {12.623729, -3.185869, 0.000000, 0.573997, 0.573997};
//+
c0 = 0.05739970600402912;
//+
MeshSize {5} = c0;
//+
Disk(3) = {30.333488, -1.104584, 0.000000, 0.832655, 0.832655};
//+
c1 = 0.08326547369059814;
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
