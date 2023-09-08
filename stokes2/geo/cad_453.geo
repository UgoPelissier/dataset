//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.577560, -3.838958, 0.000000, 38.343796, 8.302201, 0.000000};
//+
l = [0.6376537017916278, 0.6376537017916278, 3.914209467830063, 1.8115058634672114, 3.914209467830063, 1.9282184794573851, 0.8548368763784057, 0.8548368763784057];
//+
MeshSize {1} = 0.637654;
//+
MeshSize {2} = 0.637654;
//+
MeshSize {3} = 3.914209;
//+
MeshSize {4} = 1.811506;
//+
Disk(2) = {7.494137, -1.854300, 0.000000, 0.819150, 0.819150};
//+
c0 = 0.08191497905014984;
//+
MeshSize {5} = c0;
//+
Disk(3) = {20.007938, -2.436054, 0.000000, 0.850318, 0.850318};
//+
c1 = 0.08503181379241173;
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
