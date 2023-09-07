//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.430456, -4.377798, 0.000000, 32.156928, 8.776691, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {16.906262, 0.706684, 0.000000, 0.000000, 0.000000, 1.000000, 1.075235, 2*Pi};
//+
c0 = 0.10752353982704262;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {14.526757, -0.955482, 0.000000, 0.000000, 0.000000, 1.000000, 1.272342, 2*Pi};
//+
c1 = 0.1272342232462432;
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
