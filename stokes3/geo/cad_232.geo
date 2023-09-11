//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.646706, -2.943354, 0.000000, 37.824628, 7.731160, 1.000000};
//+
l = [3.866505188938152, 3.866505188938152, 1.1725632687593763, 1.1725632687593763, 1.1725632687593763, 1.1800092572030327, 1.1800092572030327, 1.1800092572030327, 3.866505188938152, 3.866505188938152];
//+
MeshSize {1} = 3.866505;
//+
MeshSize {2} = 3.866505;
//+
MeshSize {3} = 1.172563;
//+
MeshSize {4} = 1.172563;
//+
MeshSize {5} = 1.172563;
//+
MeshSize {6} = 1.180009;
//+
MeshSize {7} = 1.180009;
//+
MeshSize {8} = 1.180009;
//+
Cylinder(2) = {25.917057, 0.795707, 0.000000, 0.000000, 0.000000, 1.000000, 1.373620, 2*Pi};
//+
c0 = 0.13736204584895395;
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
