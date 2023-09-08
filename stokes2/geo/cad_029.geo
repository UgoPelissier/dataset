//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.751864, -4.925525, 0.000000, 33.830991, 9.996136, 0.000000};
//+
l = [3.4942160205666135, 0.48690912444318873, 0.6962664023133569, 3.4942160205666135];
//+
MeshSize {1} = 3.494216;
//+
MeshSize {2} = 0.486909;
//+
MeshSize {3} = 0.696266;
//+
MeshSize {4} = 3.494216;
//+
Disk(2) = {30.407676, -1.304225, 0.000000, 0.657747, 0.657747};
//+
c0 = 0.0657746832357232;
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
