//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.705536, -3.400431, 0.000000, 29.346976, 7.698064, 0.000000};
//+
l = [0.8146157280340938, 3.029799540360427, 3.029799540360427, 0.614522701433771];
//+
MeshSize {1} = 0.814616;
//+
MeshSize {2} = 3.029800;
//+
MeshSize {3} = 3.029800;
//+
MeshSize {4} = 0.614523;
//+
Disk(2) = {7.691157, 2.578568, 0.000000, 1.048804, 1.048804};
//+
c0 = 0.10488042454438357;
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
