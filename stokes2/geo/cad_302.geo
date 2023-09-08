//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.028207, -3.753947, 0.000000, 39.447381, 8.909016, 0.000000};
//+
l = [3.972612036395277, 0.8988182721257361, 0.5141802505950416, 0.5141802505950416, 0.6200171987520675, 0.6200171987520675, 3.972612036395277, 0.941509836525116];
//+
MeshSize {1} = 3.972612;
//+
MeshSize {2} = 0.898818;
//+
MeshSize {3} = 0.514180;
//+
MeshSize {4} = 0.514180;
//+
Disk(2) = {34.802718, -0.069252, 0.000000, 0.809053, 0.809053};
//+
c0 = 0.08090530721512196;
//+
MeshSize {5} = c0;
//+
Disk(3) = {8.637611, 0.235630, 0.000000, 0.500683, 0.500683};
//+
c1 = 0.05006834963838308;
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
