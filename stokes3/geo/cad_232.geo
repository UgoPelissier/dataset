//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.646706, -2.943354, 0.000000, 37.824628, 7.731160, 1.000000};
//+
MeshSize {1} = 3.866505;
//+
MeshSize {2} = 3.866505;
//+
MeshSize {3} = 3.866505;
//+
MeshSize {4} = 3.866505;
//+
MeshSize {5} = 1.172563;
//+
MeshSize {6} = 1.172563;
//+
MeshSize {7} = 1.180009;
//+
MeshSize {8} = 1.180009;
//+
Cylinder(2) = {25.917057, 0.795707, 0.000000, 0.000000, 0.000000, 1.000000, 1.373620, 2*Pi};
//+
MeshSize {9} = 0.137362;
//+
MeshSize {10} = 0.137362;
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
