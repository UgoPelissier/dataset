//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.095086, -3.791112, 0.000000, 36.555993, 8.435753, 1.000000};
//+
l = [0.8619905618877501, 0.8619905618877501, 0.8619905618877501, 3.689298097327031, 3.689298097327031, 3.689298097327031, 3.689298097327031, 0.5036524405656707, 0.5036524405656707, 0.5036524405656707];
//+
MeshSize {1} = 0.861991;
//+
MeshSize {2} = 0.861991;
//+
MeshSize {3} = 0.861991;
//+
MeshSize {4} = 3.689298;
//+
MeshSize {5} = 3.689298;
//+
MeshSize {6} = 3.689298;
//+
MeshSize {7} = 3.689298;
//+
MeshSize {8} = 0.503652;
//+
Cylinder(2) = {5.594381, 3.568197, 0.000000, 0.000000, 0.000000, 1.000000, 0.567133, 2*Pi};
//+
c0 = 0.05671333081366478;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
