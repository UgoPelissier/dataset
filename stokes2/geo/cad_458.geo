//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.882404, -3.890885, 0.000000, 29.420237, 8.688336, 0.000000};
//+
l = [0.9722933965829589, 0.9722933965829589, 3.0612446264499766, 0.7885682107990684, 3.0612446264499766, 0.7408850064302462, 1.0363590193251027, 1.0363590193251027];
//+
MeshSize {1} = 0.972293;
//+
MeshSize {2} = 0.972293;
//+
MeshSize {3} = 3.061245;
//+
MeshSize {4} = 0.788568;
//+
Disk(2) = {10.649585, -0.336745, 0.000000, 0.670802, 0.670802};
//+
c0 = 0.06708015448023183;
//+
MeshSize {5} = c0;
//+
Disk(3) = {23.270656, 0.907412, 0.000000, 0.627394, 0.627394};
//+
c1 = 0.06273940019901818;
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
