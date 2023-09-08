//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.073709, -3.302634, 0.000000, 32.875377, 8.296792, 0.000000};
//+
l = [1.2315160335097572, 1.2315160335097572, 3.3209207569153465, 1.258525971139813, 3.3209207569153465, 1.319660706911822, 1.162751851267362, 1.162751851267362];
//+
MeshSize {1} = 1.231516;
//+
MeshSize {2} = 1.231516;
//+
MeshSize {3} = 3.320921;
//+
MeshSize {4} = 1.258526;
//+
Disk(2) = {12.370994, 1.924732, 0.000000, 1.047046, 1.047046};
//+
c0 = 0.10470462586122316;
//+
MeshSize {5} = c0;
//+
Disk(3) = {20.219033, -0.143229, 0.000000, 0.530993, 0.530993};
//+
c1 = 0.053099320405217504;
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
