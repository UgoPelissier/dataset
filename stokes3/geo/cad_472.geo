//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.111549, -3.764306, 0.000000, 35.806152, 7.877840, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {16.042755, 2.425119, 0.000000, 0.000000, 0.000000, 1.000000, 0.761253, 2*Pi};
//+
c0 = 0.0761253;
//+
Cylinder(3) = {25.170223, -0.118810, 0.000000, 0.000000, 0.000000, 1.000000, 1.299372, 2*Pi};
//+
c1 = 0.1299372;
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
Save "cad_472.msh";
