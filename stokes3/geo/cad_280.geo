//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.517749, -3.609905, 0.000000, 36.960687, 8.238855, 1.000000};
//+
MeshSize {1} = 3.770415;
//+
MeshSize {2} = 3.770415;
//+
MeshSize {3} = 0.581500;
//+
MeshSize {4} = 0.581500;
//+
MeshSize {5} = 3.770415;
//+
MeshSize {6} = 3.770415;
//+
MeshSize {7} = 1.421888;
//+
MeshSize {8} = 1.421888;
//+
Cylinder(2) = {22.259559, 0.233048, 0.000000, 0.000000, 0.000000, 1.000000, 1.477697, 2*Pi};
//+
MeshSize {9} = 0.147770;
//+
MeshSize {10} = 0.147770;
//+
Cylinder(3) = {32.261963, 0.563376, 0.000000, 0.000000, 0.000000, 1.000000, 0.865412, 2*Pi};
//+
MeshSize {11} = 0.086541;
//+
MeshSize {12} = 0.086541;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
