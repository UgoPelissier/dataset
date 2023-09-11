//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.740541, -3.619321, 0.000000, 31.602852, 8.043173, 1.000000};
//+
MeshSize {1} = 0.935896;
//+
MeshSize {2} = 0.935896;
//+
MeshSize {3} = 0.935896;
//+
MeshSize {4} = 3.259246;
//+
MeshSize {5} = 3.259246;
//+
MeshSize {6} = 3.259246;
//+
MeshSize {7} = 3.259246;
//+
MeshSize {8} = 0.758728;
//+
Cylinder(2) = {9.355761, 2.539924, 0.000000, 0.000000, 0.000000, 1.000000, 1.231517, 2*Pi};
//+
MeshSize {9} = 0.123152;
//+
MeshSize {10} = 0.123152;
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
