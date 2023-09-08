//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.248656, -4.087143, 0.000000, 34.237479, 8.554704, 0.000000};
//+
l = [0.8134398168939665, 3.475038533293826, 3.475038533293826, 1.0031999963525247];
//+
MeshSize {1} = 0.813440;
//+
MeshSize {2} = 3.475039;
//+
MeshSize {3} = 3.475039;
//+
MeshSize {4} = 1.003200;
//+
Disk(2) = {9.605946, -2.140332, 0.000000, 1.423266, 1.423266};
//+
c0 = 0.1423265599276013;
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
