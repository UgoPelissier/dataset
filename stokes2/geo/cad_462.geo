//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.176174, -2.930047, 0.000000, 30.519902, 7.771862, 0.000000};
//+
l = [3.094106593675799, 1.4976470801110056, 0.6734569495547553, 0.6734569495547553, 0.5449105934815954, 0.5449105934815954, 3.094106593675799, 1.4831564948311127];
//+
MeshSize {1} = 3.094107;
//+
MeshSize {2} = 1.497647;
//+
MeshSize {3} = 0.673457;
//+
MeshSize {4} = 0.673457;
//+
Disk(2) = {24.988654, 2.108843, 0.000000, 0.878911, 0.878911};
//+
c0 = 0.0878911013360383;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.172922, 1.244778, 0.000000, 0.590533, 0.590533};
//+
c1 = 0.05905330048323554;
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
