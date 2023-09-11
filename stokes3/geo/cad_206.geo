//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.669834, -3.284572, 0.000000, 35.709612, 7.631228, 1.000000};
//+
MeshSize {1} = 1.459200;
//+
MeshSize {2} = 1.459200;
//+
MeshSize {3} = 1.401460;
//+
MeshSize {4} = 1.401460;
//+
MeshSize {5} = 3.657900;
//+
MeshSize {6} = 3.657900;
//+
MeshSize {7} = 3.657900;
//+
MeshSize {8} = 3.657900;
//+
Cylinder(2) = {15.035675, 1.658709, 0.000000, 0.000000, 0.000000, 1.000000, 0.600545, 2*Pi};
//+
MeshSize {9} = 0.060054;
//+
MeshSize {10} = 0.060054;
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
