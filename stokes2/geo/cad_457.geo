//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.455584, -3.647268, 0.000000, 36.646575, 8.663491, 0.000000};
//+
l = [3.735417279045543, 3.735417279045543, 1.505082948775401, 1.0958630886154381, 1.3392903018630637, 1.041862746529047, 3.735417279045543, 3.735417279045543];
//+
MeshSize {1} = 3.735417;
//+
MeshSize {2} = 3.735417;
//+
MeshSize {3} = 1.505083;
//+
MeshSize {4} = 1.095863;
//+
Disk(2) = {22.889883, 3.576823, 0.000000, 0.892077, 0.892077};
//+
c0 = 0.08920769183587512;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.957213, 1.431041, 0.000000, 1.288779, 1.288779};
//+
c1 = 0.12887787063478795;
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
