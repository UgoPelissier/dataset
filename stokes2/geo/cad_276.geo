//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.958032, -3.712573, 0.000000, 35.927887, 7.829783, 0.000000};
//+
l = [0.963939394567972, 0.963939394567972, 3.709309075131006, 3.709309075131006, 3.709309075131006, 3.709309075131006, 0.8849695436258118, 0.8849695436258118];
//+
MeshSize {1} = 0.963939;
//+
MeshSize {2} = 0.963939;
//+
MeshSize {3} = 3.709309;
//+
MeshSize {4} = 3.709309;
//+
Disk(2) = {10.107459, 1.210390, 0.000000, 0.750389, 0.750389};
//+
c0 = 0.0750389278549109;
//+
MeshSize {5} = c0;
//+
Disk(3) = {14.619423, -1.522820, 0.000000, 1.199441, 1.199441};
//+
c1 = 0.11994413715245736;
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
