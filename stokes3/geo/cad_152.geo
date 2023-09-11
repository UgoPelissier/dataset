//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.831345, -3.185826, 0.000000, 37.259092, 7.913848, 1.000000};
//+
MeshSize {1} = 1.485649;
//+
MeshSize {2} = 1.485649;
//+
MeshSize {3} = 1.485649;
//+
MeshSize {4} = 3.829541;
//+
MeshSize {5} = 3.829541;
//+
MeshSize {6} = 3.829541;
//+
MeshSize {7} = 3.829541;
//+
MeshSize {8} = 1.556946;
//+
Cylinder(2) = {16.671171, -0.705451, 0.000000, 0.000000, 0.000000, 1.000000, 1.176363, 2*Pi};
//+
MeshSize {9} = 0.117636;
//+
MeshSize {10} = 0.117636;
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
