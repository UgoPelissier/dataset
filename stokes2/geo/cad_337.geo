//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.416028, -4.007241, 0.000000, 37.606620, 9.195983, 0.000000};
//+
l = [0.6237639845655147, 0.44764967785823695, 3.8299651093713742, 3.8299651093713742, 3.8299651093713742, 3.8299651093713742, 0.8172440849141402, 0.66021003463265];
//+
MeshSize {1} = 0.623764;
//+
MeshSize {2} = 0.447650;
//+
MeshSize {3} = 3.829965;
//+
MeshSize {4} = 3.829965;
//+
Disk(2) = {6.892006, -1.105810, 0.000000, 0.858599, 0.858599};
//+
c0 = 0.08585989148270967;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.294182, -0.815828, 0.000000, 0.545972, 0.545972};
//+
c1 = 0.054597232537967;
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
