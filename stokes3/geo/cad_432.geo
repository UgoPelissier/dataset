//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.712019, -3.990348, 0.000000, 37.809275, 8.728614, 1.000000};
//+
MeshSize {1} = 0.423719;
//+
MeshSize {2} = 0.423719;
//+
MeshSize {3} = 0.423719;
//+
MeshSize {4} = 0.423719;
//+
MeshSize {5} = 0.423719;
//+
MeshSize {6} = 0.423719;
//+
MeshSize {7} = 3.876774;
//+
MeshSize {8} = 3.876774;
//+
Cylinder(2) = {5.297168, -2.677417, 0.000000, 0.000000, 0.000000, 1.000000, 0.532230, 2*Pi};
//+
MeshSize {9} = 0.053223;
//+
MeshSize {10} = 0.053223;
//+
Cylinder(3) = {15.910990, 2.115525, 0.000000, 0.000000, 0.000000, 1.000000, 1.488243, 2*Pi};
//+
MeshSize {11} = 0.148824;
//+
MeshSize {12} = 0.148824;
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
