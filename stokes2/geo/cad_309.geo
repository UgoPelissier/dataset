//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.265265, -3.530521, 0.000000, 32.110218, 7.624089, 0.000000};
//+
l = [3.259913452088268, 1.100435044691472, 1.450190159841576, 1.450190159841576, 1.3291745386209803, 1.3291745386209803, 3.259913452088268, 1.1531147690628205];
//+
MeshSize {1} = 3.259913;
//+
MeshSize {2} = 1.100435;
//+
MeshSize {3} = 1.450190;
//+
MeshSize {4} = 1.450190;
//+
Disk(2) = {18.511324, 2.591081, 0.000000, 0.653590, 0.653590};
//+
c0 = 0.06535899345167343;
//+
MeshSize {5} = c0;
//+
Disk(3) = {11.682011, -0.551939, 0.000000, 0.794549, 0.794549};
//+
c1 = 0.07945494489662148;
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
