//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.178652, -3.210428, 0.000000, 38.526534, 8.246112, 1.000000};
//+
l = [3.8924169748834943, 3.8924169748834943, 1.3913263616017206, 1.3913263616017206, 1.3913263616017206, 1.3921213840458795, 1.3921213840458795, 1.3921213840458795, 3.8924169748834943, 3.8924169748834943];
//+
MeshSize {1} = 3.892417;
//+
MeshSize {2} = 3.892417;
//+
MeshSize {3} = 1.391326;
//+
MeshSize {4} = 1.391326;
//+
MeshSize {5} = 1.391326;
//+
MeshSize {6} = 1.392121;
//+
MeshSize {7} = 1.392121;
//+
MeshSize {8} = 1.392121;
//+
Cylinder(2) = {24.730659, 0.898581, 0.000000, 0.000000, 0.000000, 1.000000, 0.652839, 2*Pi};
//+
c0 = 0.06528392685496348;
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
