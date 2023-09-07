//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.167020, -3.289691, 0.000000, 32.815002, 8.227069, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {24.005369, 0.792842, 0.000000, 0.837835, 0.837835};
//+
c0 = 0.0837835151207933;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.729460, -1.157953, 0.000000, 0.688426, 0.688426};
//+
c1 = 0.06884260338908695;
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
