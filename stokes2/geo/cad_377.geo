//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.696708, -4.248710, 0.000000, 30.642123, 8.692853, 0.000000};
//+
l = [0.9103254001102381, 0.9103254001102381, 3.1638801426317116, 0.4492602845895453, 3.1638801426317116, 0.5819008931017761, 0.5938187946161617, 0.5938187946161617];
//+
MeshSize {1} = 0.910325;
//+
MeshSize {2} = 0.910325;
//+
MeshSize {3} = 3.163880;
//+
MeshSize {4} = 0.449260;
//+
Disk(2) = {7.286682, 3.121197, 0.000000, 0.783267, 0.783267};
//+
c0 = 0.07832666680089559;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.476831, -0.794121, 0.000000, 0.689021, 0.689021};
//+
c1 = 0.06890210137178708;
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
