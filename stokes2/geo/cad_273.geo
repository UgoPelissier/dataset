//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.880125, -4.004687, 0.000000, 34.276010, 8.195564, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {32.917959, -1.073036, 0.000000, 1.450254, 1.450254};
//+
c0 = 0.14502540788653825;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.759745, 1.892618, 0.000000, 0.958449, 0.958449};
//+
c1 = 0.09584492566797177;
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
