//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.270916, -3.739327, 0.000000, 30.935642, 7.981461, 1.000000};
//+
MeshSize {1} = 0.404598;
//+
MeshSize {2} = 0.404598;
//+
MeshSize {3} = 0.399333;
//+
MeshSize {4} = 0.399333;
//+
MeshSize {5} = 3.146069;
//+
MeshSize {6} = 3.146069;
//+
MeshSize {7} = 3.146069;
//+
MeshSize {8} = 3.146069;
//+
Cylinder(2) = {3.730892, 0.286247, 0.000000, 0.000000, 0.000000, 1.000000, 1.262190, 2*Pi};
//+
MeshSize {9} = 0.126219;
//+
MeshSize {10} = 0.126219;
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
