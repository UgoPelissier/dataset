//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.101752, -3.285502, 0.000000, 31.767846, 8.314962, 0.000000};
//+
l = [3.2139632057920324, 3.2139632057920324, 1.4596392014398036, 1.2172075482206561, 1.4444812940134495, 1.2266593488398128, 1.606209531445443, 1.606209531445443];
//+
MeshSize {1} = 3.213963;
//+
MeshSize {2} = 3.213963;
//+
MeshSize {3} = 1.459639;
//+
MeshSize {4} = 1.217208;
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
