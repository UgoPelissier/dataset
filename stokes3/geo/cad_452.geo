//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.004110, -3.560522, 0.000000, 36.866413, 8.985719, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {3.210534, -0.297644, 0.000000, 0.000000, 0.000000, 1.000000, 0.546140, 2*Pi};
//+
c0 = 0.054613977002429086;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {19.193973, 1.428588, 0.000000, 0.000000, 0.000000, 1.000000, 0.812481, 2*Pi};
//+
c1 = 0.08124808000212927;
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
