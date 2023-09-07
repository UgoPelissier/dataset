//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.942442, -3.781383, 0.000000, 37.955090, 7.892759, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {3.938679, -2.324019, 0.000000, 0.689984, 0.689984};
//+
c0 = 0.06899842575883855;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.119232, 1.752493, 0.000000, 1.229974, 1.229974};
//+
c1 = 0.122997400567029;
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
