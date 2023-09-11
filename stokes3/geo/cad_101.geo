//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.049044, -4.273788, 0.000000, 34.918229, 9.760388, 1.000000};
//+
l = [1.1176123542422445, 1.1176123542422445, 1.1176123542422445, 3.53061816997908, 3.53061816997908, 3.53061816997908, 3.53061816997908, 0.917750213635766, 0.917750213635766, 0.917750213635766];
//+
MeshSize {1} = 1.117612;
//+
MeshSize {2} = 1.117612;
//+
MeshSize {3} = 1.117612;
//+
MeshSize {4} = 3.530618;
//+
MeshSize {5} = 3.530618;
//+
MeshSize {6} = 3.530618;
//+
MeshSize {7} = 3.530618;
//+
MeshSize {8} = 0.917750;
//+
Cylinder(2) = {10.007429, 2.916991, 0.000000, 0.000000, 0.000000, 1.000000, 1.107065, 2*Pi};
//+
c0 = 0.1107064998164266;
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
