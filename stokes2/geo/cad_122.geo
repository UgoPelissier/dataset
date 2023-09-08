//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.095086, -3.791112, 0.000000, 36.555993, 8.435753, 0.000000};
//+
l = [0.8619905618877501, 3.689298097327031, 3.689298097327031, 0.5036524405656707];
//+
MeshSize {1} = 0.861991;
//+
MeshSize {2} = 3.689298;
//+
MeshSize {3} = 3.689298;
//+
MeshSize {4} = 0.503652;
//+
Disk(2) = {5.594381, 3.568197, 0.000000, 0.567133, 0.567133};
//+
c0 = 0.05671333081366478;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
