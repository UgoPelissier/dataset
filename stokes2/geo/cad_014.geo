//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.178652, -3.210428, 0.000000, 38.526534, 8.246112, 0.000000};
//+
l = [3.8924169748834943, 1.3913263616017206, 1.3921213840458795, 3.8924169748834943];
//+
MeshSize {1} = 3.892417;
//+
MeshSize {2} = 1.391326;
//+
MeshSize {3} = 1.392121;
//+
MeshSize {4} = 3.892417;
//+
Disk(2) = {24.730659, 0.898581, 0.000000, 0.652839, 0.652839};
//+
c0 = 0.06528392685496348;
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
