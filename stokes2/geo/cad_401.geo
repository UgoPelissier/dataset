//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.412904, -3.258512, 0.000000, 31.411168, 8.223988, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {20.268519, 0.968205, 0.000000, 0.772134, 0.772134};
//+
c0 = 0.07721341304516241;
//+
MeshSize {5} = c0;
//+
Disk(3) = {15.707711, -1.300107, 0.000000, 0.811577, 0.811577};
//+
c1 = 0.08115766852030555;
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
