//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.232791, -4.443604, 0.000000, 32.546945, 9.089211, 1.000000};
//+
MeshSize {1} = 1.146250;
//+
MeshSize {2} = 1.146250;
//+
MeshSize {3} = 1.146250;
//+
MeshSize {4} = 3.309327;
//+
MeshSize {5} = 3.309327;
//+
MeshSize {6} = 3.309327;
//+
MeshSize {7} = 3.309327;
//+
MeshSize {8} = 1.238414;
//+
Cylinder(2) = {11.959103, -1.179953, 0.000000, 0.000000, 0.000000, 1.000000, 0.709507, 2*Pi};
//+
MeshSize {9} = 0.070951;
//+
MeshSize {10} = 0.070951;
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
