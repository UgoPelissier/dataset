//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.705495, -3.838321, 0.000000, 37.844495, 9.148207, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {28.828229, -0.488561, 0.000000, 1.199311, 1.199311};
//+
c0 = 0.11993114422950533;
//+
MeshSize {5} = c0;
//+
Disk(3) = {13.046775, 0.462682, 0.000000, 1.197057, 1.197057};
//+
c1 = 0.11970574087244604;
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
