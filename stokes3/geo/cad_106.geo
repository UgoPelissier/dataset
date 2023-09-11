//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.746559, -4.614901, 0.000000, 30.405138, 9.907233, 1.000000};
//+
MeshSize {1} = 3.154309;
//+
MeshSize {2} = 3.154309;
//+
MeshSize {3} = 3.154309;
//+
MeshSize {4} = 3.154309;
//+
MeshSize {5} = 0.562659;
//+
MeshSize {6} = 0.562659;
//+
MeshSize {7} = 0.770428;
//+
MeshSize {8} = 0.770428;
//+
Cylinder(2) = {25.064271, -1.329798, 0.000000, 0.000000, 0.000000, 1.000000, 1.290682, 2*Pi};
//+
MeshSize {9} = 0.129068;
//+
MeshSize {10} = 0.129068;
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
