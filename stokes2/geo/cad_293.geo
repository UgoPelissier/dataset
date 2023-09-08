//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.964635, -3.873624, 0.000000, 32.118442, 8.162520, 0.000000};
//+
l = [3.333386683660242, 3.333386683660242, 0.7398632346655998, 0.5371620141289027, 0.5798606801039164, 0.5798606801039164, 3.333386683660242, 3.333386683660242];
//+
MeshSize {1} = 3.333387;
//+
MeshSize {2} = 3.333387;
//+
MeshSize {3} = 0.739863;
//+
MeshSize {4} = 0.537162;
//+
Disk(2) = {27.339415, 1.607020, 0.000000, 0.540330, 0.540330};
//+
c0 = 0.05403298081086634;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.654963, -1.405638, 0.000000, 0.591213, 0.591213};
//+
c1 = 0.05912129037913486;
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
