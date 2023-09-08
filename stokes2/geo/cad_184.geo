//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.638991, -3.614052, 0.000000, 35.632649, 8.224179, 0.000000};
//+
l = [3.650398822594747, 1.1017812202183268, 1.2463138004081915, 3.650398822594747];
//+
MeshSize {1} = 3.650399;
//+
MeshSize {2} = 1.101781;
//+
MeshSize {3} = 1.246314;
//+
MeshSize {4} = 3.650399;
//+
Disk(2) = {24.845741, -1.665940, 0.000000, 0.572973, 0.572973};
//+
c0 = 0.057297302550534585;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
