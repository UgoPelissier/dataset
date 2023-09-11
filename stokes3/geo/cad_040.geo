//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.313677, -3.625285, 0.000000, 34.800553, 8.462989, 1.000000};
//+
MeshSize {1} = 3.536827;
//+
MeshSize {2} = 3.536827;
//+
MeshSize {3} = 1.019791;
//+
MeshSize {4} = 1.019791;
//+
MeshSize {5} = 1.019791;
//+
MeshSize {6} = 0.906883;
//+
MeshSize {7} = 0.906883;
//+
MeshSize {8} = 0.906883;
//+
Cylinder(2) = {25.262231, 2.047621, 0.000000, 0.000000, 0.000000, 1.000000, 1.170629, 2*Pi};
//+
MeshSize {9} = 0.117063;
//+
MeshSize {10} = 0.117063;
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
