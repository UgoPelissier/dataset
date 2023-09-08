//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.412904, -3.258512, 0.000000, 31.411168, 8.223988, 0.000000};
//+
l = [3.2088627907305494, 1.4608101660035135, 1.1532171344255437, 1.1532171344255437, 1.1455251820266723, 1.1455251820266723, 3.2088627907305494, 1.5716843056163512];
//+
MeshSize {1} = 3.208863;
//+
MeshSize {2} = 1.460810;
//+
MeshSize {3} = 1.153217;
//+
MeshSize {4} = 1.153217;
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
