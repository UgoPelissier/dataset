//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.360962, -3.511793, 0.000000, 38.957484, 8.144287, 0.000000};
//+
l = [1.3477175276373763, 1.3477175276373763, 3.952875573239073, 1.1448039959013296, 3.952875573239073, 0.9580577904143763, 1.2990288430843469, 1.2990288430843469];
//+
MeshSize {1} = 1.347718;
//+
MeshSize {2} = 1.347718;
//+
MeshSize {3} = 3.952876;
//+
MeshSize {4} = 1.144804;
//+
Disk(2) = {13.962335, 1.410532, 0.000000, 0.987494, 0.987494};
//+
c0 = 0.09874937443043617;
//+
MeshSize {5} = c0;
//+
Disk(3) = {28.959064, 3.173279, 0.000000, 0.881071, 0.881071};
//+
c1 = 0.08810709984128458;
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
