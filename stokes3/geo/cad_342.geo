//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.222918, -4.070237, 0.000000, 35.378590, 9.049395, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {16.844273, 1.422268, 0.000000, 0.000000, 0.000000, 1.000000, 1.215914, 2*Pi};
//+
c0 = 0.12159135002831555;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {4.059404, 2.346689, 0.000000, 0.000000, 0.000000, 1.000000, 0.721747, 2*Pi};
//+
c1 = 0.07217471078201901;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
