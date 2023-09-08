//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.627200, -3.276829, 0.000000, 34.742475, 8.337774, 0.000000};
//+
l = [3.561451334506653, 1.0414314942912888, 0.6814940078038763, 0.6814940078038763, 0.8336714397238538, 0.8336714397238538, 3.561451334506653, 1.0850192561742549];
//+
MeshSize {1} = 3.561451;
//+
MeshSize {2} = 1.041431;
//+
MeshSize {3} = 0.681494;
//+
MeshSize {4} = 0.681494;
//+
Disk(2) = {27.729438, -0.717440, 0.000000, 1.242585, 1.242585};
//+
c0 = 0.12425846461655371;
//+
MeshSize {5} = c0;
//+
Disk(3) = {11.159233, 0.299205, 0.000000, 0.708262, 0.708262};
//+
c1 = 0.07082624701961698;
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
