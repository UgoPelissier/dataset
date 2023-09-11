//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.645903, -3.375495, 0.000000, 37.283426, 7.732633, 1.000000};
//+
MeshSize {1} = 0.834851;
//+
MeshSize {2} = 0.834851;
//+
MeshSize {3} = 0.834851;
//+
MeshSize {4} = 3.812588;
//+
MeshSize {5} = 3.812588;
//+
MeshSize {6} = 3.812588;
//+
MeshSize {7} = 3.812588;
//+
MeshSize {8} = 0.746810;
//+
Cylinder(2) = {8.405003, 1.483020, 0.000000, 0.000000, 0.000000, 1.000000, 0.806206, 2*Pi};
//+
MeshSize {9} = 0.080621;
//+
MeshSize {10} = 0.080621;
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
