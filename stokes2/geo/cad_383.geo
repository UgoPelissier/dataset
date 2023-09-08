//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.348095, -3.544667, 0.000000, 32.416983, 9.015909, 0.000000};
//+
l = [0.8482686580318863, 0.8035682801917491, 3.307373610385662, 3.307373610385662, 3.307373610385662, 3.307373610385662, 0.5158668250979392, 0.5158668250979392];
//+
MeshSize {1} = 0.848269;
//+
MeshSize {2} = 0.803568;
//+
MeshSize {3} = 3.307374;
//+
MeshSize {4} = 3.307374;
//+
Disk(2) = {6.373633, 3.874261, 0.000000, 1.074907, 1.074907};
//+
c0 = 0.10749067217458147;
//+
MeshSize {5} = c0;
//+
Disk(3) = {8.555208, -0.837266, 0.000000, 0.606465, 0.606465};
//+
c1 = 0.06064649563925766;
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
