//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.215951, -3.064747, 0.000000, 33.069644, 7.868885, 1.000000};
//+
MeshSize {1} = 0.654817;
//+
MeshSize {2} = 0.654817;
//+
MeshSize {3} = 0.609106;
//+
MeshSize {4} = 0.609106;
//+
MeshSize {5} = 3.351732;
//+
MeshSize {6} = 3.351732;
//+
MeshSize {7} = 3.351732;
//+
MeshSize {8} = 3.351732;
//+
Cylinder(2) = {5.808241, 1.267344, 0.000000, 0.000000, 0.000000, 1.000000, 0.525780, 2*Pi};
//+
MeshSize {9} = 0.052578;
//+
MeshSize {10} = 0.052578;
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
