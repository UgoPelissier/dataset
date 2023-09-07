//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.458643, -2.901777, 0.000000, 34.976369, 7.514376, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {16.856860, -0.675156, 0.000000, 0.579405, 0.579405};
//+
c0 = 0.05794049173684162;
//+
MeshSize {5} = c0;
//+
Disk(3) = {21.961417, 0.432442, 0.000000, 1.325253, 1.325253};
//+
c1 = 0.13252525047036828;
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
