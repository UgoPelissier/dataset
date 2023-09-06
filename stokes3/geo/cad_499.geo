//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.945322, -3.214055, 0.000000, 37.934457, 7.777416, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {14.214092, 0.926550, 0.000000, 0.000000, 0.000000, 1.000000, 0.865571, 2*Pi};
//+
c0 = 0.0865571;
//+
Cylinder(3) = {6.814358, 0.457238, 0.000000, 0.000000, 0.000000, 1.000000, 0.567006, 2*Pi};
//+
c1 = 0.056700600000000004;
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
Save "cad_499.msh";
