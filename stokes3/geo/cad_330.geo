//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.948084, -3.117317, 0.000000, 33.085832, 8.071046, 1.000000};
//+
MeshSize {1} = 0.792028;
//+
MeshSize {2} = 0.792028;
//+
MeshSize {3} = 0.792028;
//+
MeshSize {4} = 0.792028;
//+
MeshSize {5} = 0.792028;
//+
MeshSize {6} = 0.792028;
//+
MeshSize {7} = 3.427233;
//+
MeshSize {8} = 3.427233;
//+
Cylinder(2) = {8.705507, 0.280335, 0.000000, 0.000000, 0.000000, 1.000000, 0.548587, 2*Pi};
//+
MeshSize {9} = 0.054859;
//+
MeshSize {10} = 0.054859;
//+
Cylinder(3) = {12.941525, 0.381618, 0.000000, 0.000000, 0.000000, 1.000000, 0.974396, 2*Pi};
//+
MeshSize {11} = 0.097440;
//+
MeshSize {12} = 0.097440;
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
