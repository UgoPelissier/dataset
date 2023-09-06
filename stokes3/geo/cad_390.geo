//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.279630, -4.289977, 0.000000, 31.031762, 8.939732, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {7.383388, -0.605946, 0.000000, 0.000000, 0.000000, 1.000000, 0.880883, 2*Pi};
//+
c0 = 0.08808830000000001;
//+
Cylinder(3) = {22.561747, 2.550800, 0.000000, 0.000000, 0.000000, 1.000000, 0.800034, 2*Pi};
//+
c1 = 0.0800034;
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
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_390.msh";
