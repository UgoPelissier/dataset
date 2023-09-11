//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.957318, -3.652588, 0.000000, 34.600366, 9.296021, 1.000000};
//+
l = [3.586018456634782, 3.586018456634782, 1.4252451857867106, 1.4252451857867106, 1.4252451857867106, 1.4610066843424974, 1.4610066843424974, 1.4610066843424974, 3.586018456634782, 3.586018456634782];
//+
MeshSize {1} = 3.586018;
//+
MeshSize {2} = 3.586018;
//+
MeshSize {3} = 1.425245;
//+
MeshSize {4} = 1.425245;
//+
MeshSize {5} = 1.425245;
//+
MeshSize {6} = 1.461007;
//+
MeshSize {7} = 1.461007;
//+
MeshSize {8} = 1.461007;
//+
Cylinder(2) = {20.594309, 0.392247, 0.000000, 0.000000, 0.000000, 1.000000, 1.247976, 2*Pi};
//+
c0 = 0.12479755603790642;
//+
MeshSize {9, 10} = c0;
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
