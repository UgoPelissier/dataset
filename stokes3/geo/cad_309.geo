//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.265265, -3.530521, 0.000000, 32.110218, 7.624089, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {18.511324, 2.591081, 0.000000, 0.000000, 0.000000, 1.000000, 0.653590, 2*Pi};
//+
c0 = 0.06535899345167343;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {11.682011, -0.551939, 0.000000, 0.000000, 0.000000, 1.000000, 0.794549, 2*Pi};
//+
c1 = 0.07945494489662148;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
