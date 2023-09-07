//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.586827, -3.807092, 0.000000, 30.575856, 7.668886, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {7.165240, -1.413140, 0.000000, 0.000000, 0.000000, 1.000000, 1.455446, 2*Pi};
//+
c0 = 0.145544568712336;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {14.850747, -1.123201, 0.000000, 0.000000, 0.000000, 1.000000, 1.394316, 2*Pi};
//+
c1 = 0.13943162528702066;
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
