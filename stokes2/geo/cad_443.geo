//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.134546, -3.714196, 0.000000, 32.609640, 8.817632, 0.000000};
//+
l = [3.303966308998137, 0.5565072606672903, 1.5376591195084488, 1.5376591195084488, 1.4815076406816707, 1.4815076406816707, 1.6263770003279525, 0.34902251939238255];
//+
MeshSize {1} = 3.303966;
//+
MeshSize {2} = 0.556507;
//+
MeshSize {3} = 1.537659;
//+
MeshSize {4} = 1.537659;
//+
Disk(2) = {17.179113, 1.726752, 0.000000, 1.112054, 1.112054};
//+
c0 = 0.11120537449284239;
//+
MeshSize {5} = c0;
//+
Disk(3) = {3.579013, 2.025662, 0.000000, 1.128979, 1.128979};
//+
c1 = 0.11289785990785556;
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
