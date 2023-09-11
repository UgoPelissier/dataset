//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.705536, -3.400431, 0.000000, 29.346976, 7.698064, 1.000000};
//+
MeshSize {1} = 0.814616;
//+
MeshSize {2} = 0.814616;
//+
MeshSize {3} = 0.614523;
//+
MeshSize {4} = 0.614523;
//+
MeshSize {5} = 3.029800;
//+
MeshSize {6} = 3.029800;
//+
MeshSize {7} = 3.029800;
//+
MeshSize {8} = 3.029800;
//+
Cylinder(2) = {7.691157, 2.578568, 0.000000, 0.000000, 0.000000, 1.000000, 1.048804, 2*Pi};
//+
MeshSize {9} = 0.104880;
//+
MeshSize {10} = 0.104880;
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
