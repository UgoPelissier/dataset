//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.606261, -4.000829, 0.000000, 32.673398, 9.032670, 1.000000};
//+
MeshSize {1} = 0.835817;
//+
MeshSize {2} = 0.835817;
//+
MeshSize {3} = 1.006647;
//+
MeshSize {4} = 1.006647;
//+
MeshSize {5} = 3.358471;
//+
MeshSize {6} = 3.358471;
//+
MeshSize {7} = 3.358471;
//+
MeshSize {8} = 3.358471;
//+
Cylinder(2) = {9.958417, -1.477985, 0.000000, 0.000000, 0.000000, 1.000000, 1.328289, 2*Pi};
//+
MeshSize {9} = 0.132829;
//+
MeshSize {10} = 0.132829;
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
