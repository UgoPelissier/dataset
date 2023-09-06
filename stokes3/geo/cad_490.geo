//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.361901, -3.262967, 0.000000, 35.035327, 8.048190, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {27.267592, 1.282295, 0.000000, 0.000000, 0.000000, 1.000000, 0.776427, 2*Pi};
//+
c0 = 0.07764270000000001;
//+
Cylinder(3) = {6.857115, 2.387198, 0.000000, 0.000000, 0.000000, 1.000000, 1.185244, 2*Pi};
//+
c1 = 0.1185244;
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
Save "cad_490.msh";
