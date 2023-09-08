//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.957318, -3.652588, 0.000000, 34.600366, 9.296021, 0.000000};
//+
l = [3.586018456634782, 1.4252451857867106, 1.4610066843424974, 3.586018456634782];
//+
MeshSize {1} = 3.586018;
//+
MeshSize {2} = 1.425245;
//+
MeshSize {3} = 1.461007;
//+
MeshSize {4} = 3.586018;
//+
Disk(2) = {20.594309, 0.392247, 0.000000, 1.247976, 1.247976};
//+
c0 = 0.12479755603790642;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
