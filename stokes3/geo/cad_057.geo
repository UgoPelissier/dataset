//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.252272, -4.342368, 0.000000, 29.941561, 8.848548, 1.000000};
//+
MeshSize {1} = 3.051625;
//+
MeshSize {2} = 3.051625;
//+
MeshSize {3} = 3.051625;
//+
MeshSize {4} = 3.051625;
//+
MeshSize {5} = 0.746085;
//+
MeshSize {6} = 0.746085;
//+
MeshSize {7} = 0.606959;
//+
MeshSize {8} = 0.606959;
//+
Cylinder(2) = {23.588420, 1.342808, 0.000000, 0.000000, 0.000000, 1.000000, 1.254233, 2*Pi};
//+
MeshSize {9} = 0.125423;
//+
MeshSize {10} = 0.125423;
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
