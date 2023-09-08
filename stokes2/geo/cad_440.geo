//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.458643, -2.901777, 0.000000, 34.976369, 7.514376, 0.000000};
//+
l = [1.5969291935681105, 1.5969291935681105, 3.5633642949853597, 1.2554761039277318, 3.5633642949853597, 1.2781890023131675, 1.6650275527017442, 1.6650275527017442];
//+
MeshSize {1} = 1.596929;
//+
MeshSize {2} = 1.596929;
//+
MeshSize {3} = 3.563364;
//+
MeshSize {4} = 1.255476;
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
