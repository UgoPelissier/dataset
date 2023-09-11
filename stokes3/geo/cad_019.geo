//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.238005, -3.246412, 0.000000, 31.904363, 7.830780, 1.000000};
//+
MeshSize {1} = 3.237996;
//+
MeshSize {2} = 3.237996;
//+
MeshSize {3} = 3.237996;
//+
MeshSize {4} = 3.237996;
//+
MeshSize {5} = 0.335826;
//+
MeshSize {6} = 0.335826;
//+
MeshSize {7} = 0.355738;
//+
MeshSize {8} = 0.355738;
//+
Cylinder(2) = {30.069643, 0.556323, 0.000000, 0.000000, 0.000000, 1.000000, 0.972671, 2*Pi};
//+
MeshSize {9} = 0.097267;
//+
MeshSize {10} = 0.097267;
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
