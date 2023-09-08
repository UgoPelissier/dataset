//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.646706, -2.943354, 0.000000, 37.824628, 7.731160, 0.000000};
//+
l = [3.866505188938152, 1.1725632687593763, 1.1800092572030327, 3.866505188938152];
//+
MeshSize {1} = 3.866505;
//+
MeshSize {2} = 1.172563;
//+
MeshSize {3} = 1.180009;
//+
MeshSize {4} = 3.866505;
//+
Disk(2) = {25.917057, 0.795707, 0.000000, 1.373620, 1.373620};
//+
c0 = 0.13736204584895395;
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
