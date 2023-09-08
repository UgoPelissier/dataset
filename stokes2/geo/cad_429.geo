//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.995686, -3.940511, 0.000000, 30.455838, 9.832575, 0.000000};
//+
l = [3.183344531831209, 3.183344531831209, 0.23192891799661167, 0.23192891799661167, 0.7059259126750043, 0.3999627761607844, 3.183344531831209, 3.183344531831209];
//+
MeshSize {1} = 3.183345;
//+
MeshSize {2} = 3.183345;
//+
MeshSize {3} = 0.231929;
//+
MeshSize {4} = 0.231929;
//+
Disk(2) = {28.844574, -1.794482, 0.000000, 1.057340, 1.057340};
//+
c0 = 0.1057340298093569;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.665959, 2.232777, 0.000000, 1.265435, 1.265435};
//+
c1 = 0.1265435012569185;
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
