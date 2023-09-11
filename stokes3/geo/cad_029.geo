//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.751864, -4.925525, 0.000000, 33.830991, 9.996136, 1.000000};
//+
MeshSize {1} = 3.494216;
//+
MeshSize {2} = 3.494216;
//+
MeshSize {3} = 0.486909;
//+
MeshSize {4} = 0.486909;
//+
MeshSize {5} = 0.486909;
//+
MeshSize {6} = 0.696266;
//+
MeshSize {7} = 0.696266;
//+
MeshSize {8} = 0.696266;
//+
Cylinder(2) = {30.407676, -1.304225, 0.000000, 0.000000, 0.000000, 1.000000, 0.657747, 2*Pi};
//+
MeshSize {9} = 0.065775;
//+
MeshSize {10} = 0.065775;
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
