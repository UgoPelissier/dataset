//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.451914, -3.789024, 0.000000, 37.865052, 7.691828, 0.000000};
//+
l = [1.8243524571127296, 1.8155300575315068, 1.82924360863994, 1.838003755320802];
//+
MeshSize {1} = 1.824352;
//+
MeshSize {2} = 1.815530;
//+
MeshSize {3} = 1.829244;
//+
MeshSize {4} = 1.838004;
//+
Disk(2) = {19.429300, -0.286815, 0.000000, 1.054316, 1.054316};
//+
c0 = 0.1054316371338304;
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
