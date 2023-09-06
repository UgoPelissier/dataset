//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.265265, -3.530521, 0.000000, 32.110218, 7.624088, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {18.511324, 2.591081, 0.000000, 0.000000, 0.000000, 1.000000, 0.653590, 2*Pi};
//+
c0 = 0.065359;
//+
Cylinder(3) = {11.682011, -0.551939, 0.000000, 0.000000, 0.000000, 1.000000, 0.794549, 2*Pi};
//+
c1 = 0.0794549;
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
Save "cad_309.msh";
