//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.983844, -3.502837, 0.000000, 32.488193, 8.570945, 0.000000};
//+
l = [1.1118907701553178, 3.374526010182104, 3.374526010182104, 1.1632140410000196];
//+
MeshSize {1} = 1.111891;
//+
MeshSize {2} = 3.374526;
//+
MeshSize {3} = 3.374526;
//+
MeshSize {4} = 1.163214;
//+
Disk(2) = {12.403762, 0.051090, 0.000000, 0.841231, 0.841231};
//+
c0 = 0.08412311748612833;
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
