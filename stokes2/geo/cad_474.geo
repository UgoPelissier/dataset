//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.755484, -4.132437, 0.000000, 30.920520, 8.496862, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {9.546106, 2.091507, 0.000000, 1.252428, 1.252428};
//+
c0 = 0.12524278530661706;
//+
MeshSize {5} = c0;
//+
Disk(3) = {16.868132, -1.021316, 0.000000, 1.205608, 1.205608};
//+
c1 = 0.12056078045820483;
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
