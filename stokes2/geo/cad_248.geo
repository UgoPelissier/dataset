//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.076937, -4.630863, 0.000000, 32.327784, 9.586626, 0.000000};
//+
l = [3.275731758920925, 0.8595949287727005, 0.8742298361588694, 3.275731758920925];
//+
MeshSize {1} = 3.275732;
//+
MeshSize {2} = 0.859595;
//+
MeshSize {3} = 0.874230;
//+
MeshSize {4} = 3.275732;
//+
Disk(2) = {23.466319, 0.007601, 0.000000, 1.474323, 1.474323};
//+
c0 = 0.14743233274359965;
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
