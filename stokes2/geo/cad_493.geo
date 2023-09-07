//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.144941, -3.306276, 0.000000, 34.404967, 8.468326, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {4.712767, 1.861518, 0.000000, 1.132021, 1.132021};
//+
c0 = 0.11320211169018611;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.424477, -0.350767, 0.000000, 0.671201, 0.671201};
//+
c1 = 0.06712013167168168;
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
