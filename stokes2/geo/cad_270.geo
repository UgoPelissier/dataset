//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.993958, -3.987747, 0.000000, 31.375503, 9.526757, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {19.030779, -1.423004, 0.000000, 1.210754, 1.210754};
//+
c0 = 0.12107539594937995;
//+
MeshSize {5} = c0;
//+
Disk(3) = {6.688167, -2.791885, 0.000000, 0.559358, 0.559358};
//+
c1 = 0.055935783363934115;
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
