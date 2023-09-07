//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.661713, -4.346792, 0.000000, 32.795782, 9.190739, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {12.877007, 3.115964, 0.000000, 1.058344, 1.058344};
//+
c0 = 0.10583442367021881;
//+
MeshSize {5} = c0;
//+
Disk(3) = {7.451202, 1.317192, 0.000000, 0.903277, 0.903277};
//+
c1 = 0.0903276993461723;
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
