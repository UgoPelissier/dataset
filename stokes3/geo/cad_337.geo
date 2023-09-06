//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.416028, -4.007241, 0.000000, 37.606620, 9.195982, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {6.892006, -1.105810, 0.000000, 0.000000, 0.000000, 1.000000, 0.858599, 2*Pi};
//+
c0 = 0.0858599;
//+
Cylinder(3) = {4.294182, -0.815828, 0.000000, 0.000000, 0.000000, 1.000000, 0.545972, 2*Pi};
//+
c1 = 0.054597200000000005;
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
Save "cad_337.msh";
