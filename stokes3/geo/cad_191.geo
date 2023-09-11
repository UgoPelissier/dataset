//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.570282, -3.647259, 0.000000, 34.961948, 7.683829, 1.000000};
//+
MeshSize {1} = 1.747322;
//+
MeshSize {2} = 1.747322;
//+
MeshSize {3} = 1.747322;
//+
MeshSize {4} = 1.772797;
//+
MeshSize {5} = 1.772797;
//+
MeshSize {6} = 1.772797;
//+
MeshSize {7} = 1.694892;
//+
MeshSize {8} = 1.694892;
//+
Cylinder(2) = {17.917323, 2.031636, 0.000000, 0.000000, 0.000000, 1.000000, 0.779721, 2*Pi};
//+
MeshSize {9} = 0.077972;
//+
MeshSize {10} = 0.077972;
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
