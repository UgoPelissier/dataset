//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.905306, -4.785668, 0.000000, 33.469419, 9.866033, 1.000000};
//+
MeshSize {1} = 0.713635;
//+
MeshSize {2} = 0.713635;
//+
MeshSize {3} = 0.713635;
//+
MeshSize {4} = 3.472688;
//+
MeshSize {5} = 3.472688;
//+
MeshSize {6} = 3.472688;
//+
MeshSize {7} = 3.472688;
//+
MeshSize {8} = 0.787950;
//+
Cylinder(2) = {7.632496, -0.482173, 0.000000, 0.000000, 0.000000, 1.000000, 0.849585, 2*Pi};
//+
MeshSize {9} = 0.084959;
//+
MeshSize {10} = 0.084959;
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
