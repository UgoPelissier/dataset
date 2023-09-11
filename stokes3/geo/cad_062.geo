//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.983844, -3.502837, 0.000000, 32.488193, 8.570945, 1.000000};
//+
MeshSize {1} = 1.111891;
//+
MeshSize {2} = 1.111891;
//+
MeshSize {3} = 1.111891;
//+
MeshSize {4} = 3.374526;
//+
MeshSize {5} = 3.374526;
//+
MeshSize {6} = 3.374526;
//+
MeshSize {7} = 3.374526;
//+
MeshSize {8} = 1.163214;
//+
Cylinder(2) = {12.403762, 0.051090, 0.000000, 0.000000, 0.000000, 1.000000, 0.841231, 2*Pi};
//+
MeshSize {9} = 0.084123;
//+
MeshSize {10} = 0.084123;
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
