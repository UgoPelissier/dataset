//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.074082, -3.307051, 0.000000, 30.462009, 7.872994, 0.000000};
//+
l = [0.534302841468925, 3.078877792862816, 3.078877792862816, 0.32206635379180076];
//+
MeshSize {1} = 0.534303;
//+
MeshSize {2} = 3.078878;
//+
MeshSize {3} = 3.078878;
//+
MeshSize {4} = 0.322066;
//+
Disk(2) = {3.617048, 2.081962, 0.000000, 1.106318, 1.106318};
//+
c0 = 0.11063176512429629;
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
