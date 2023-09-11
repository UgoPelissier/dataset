//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.561673, -4.046065, 0.000000, 32.041225, 8.615683, 1.000000};
//+
MeshSize {1} = 0.472111;
//+
MeshSize {2} = 0.472111;
//+
MeshSize {3} = 0.472111;
//+
MeshSize {4} = 3.288627;
//+
MeshSize {5} = 3.288627;
//+
MeshSize {6} = 3.288627;
//+
MeshSize {7} = 3.288627;
//+
MeshSize {8} = 0.243676;
//+
Cylinder(2) = {2.862233, 1.567445, 0.000000, 0.000000, 0.000000, 1.000000, 1.345521, 2*Pi};
//+
MeshSize {9} = 0.134552;
//+
MeshSize {10} = 0.134552;
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
