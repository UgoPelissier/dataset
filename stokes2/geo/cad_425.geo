//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.617965, -3.707332, 0.000000, 35.929614, 7.520835, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {14.204039, -1.719937, 0.000000, 1.352083, 1.352083};
//+
c0 = 0.13520829447572588;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.125070, 2.739707, 0.000000, 0.519078, 0.519078};
//+
c1 = 0.05190783239341942;
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
