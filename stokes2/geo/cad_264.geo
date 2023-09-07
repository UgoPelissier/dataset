//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.101752, -3.285502, 0.000000, 31.767846, 8.314962, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {16.818066, 1.156683, 0.000000, 1.096971, 1.096971};
//+
c0 = 0.10969708292829937;
//+
MeshSize {5} = c0;
//+
Disk(3) = {19.482154, 0.723441, 0.000000, 0.847925, 0.847925};
//+
c1 = 0.08479246374367544;
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
