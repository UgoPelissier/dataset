//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.946262, -3.567125, 0.000000, 33.979985, 7.742980, 0.000000};
//+
l = [3.514016374059783, 1.1287820586778157, 1.0288956065552888, 3.514016374059783];
//+
MeshSize {1} = 3.514016;
//+
MeshSize {2} = 1.128782;
//+
MeshSize {3} = 1.028896;
//+
MeshSize {4} = 3.514016;
//+
Disk(2) = {23.417567, 1.882629, 0.000000, 1.445974, 1.445974};
//+
c0 = 0.1445974085779432;
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
