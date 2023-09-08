//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.053800, -4.068686, 0.000000, 31.736030, 8.990303, 0.000000};
//+
l = [3.210606914544114, 3.210606914544114, 1.356161635667871, 1.1110331962008952, 1.1885424620644827, 1.1885424620644827, 3.210606914544114, 3.210606914544114];
//+
MeshSize {1} = 3.210607;
//+
MeshSize {2} = 3.210607;
//+
MeshSize {3} = 1.356162;
//+
MeshSize {4} = 1.111033;
//+
Disk(2) = {18.843620, 3.022310, 0.000000, 1.199365, 1.199365};
//+
c0 = 0.1199365499957176;
//+
MeshSize {5} = c0;
//+
Disk(3) = {19.592560, -1.686215, 0.000000, 1.317442, 1.317442};
//+
c1 = 0.13174419790368314;
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
