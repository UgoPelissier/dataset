//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.548563, -4.279216, 0.000000, 34.164890, 9.032710, 0.000000};
//+
l = [1.2171031273541069, 1.2171031273541069, 3.500601844115112, 0.9495019846143985, 3.500601844115112, 1.059677439440643, 1.234394611934143, 1.234394611934143];
//+
MeshSize {1} = 1.217103;
//+
MeshSize {2} = 1.217103;
//+
MeshSize {3} = 3.500602;
//+
MeshSize {4} = 0.949502;
//+
Disk(2) = {12.702491, -0.011110, 0.000000, 0.710532, 0.710532};
//+
c0 = 0.07105324821106564;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.324155, -1.153390, 0.000000, 1.354326, 1.354326};
//+
c1 = 0.13543260872408197;
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
