//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.051620, -3.540031, 0.000000, 38.037338, 9.060792, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {32.430662, -2.012866, 0.000000, 0.000000, 0.000000, 1.000000, 0.632539, 2*Pi};
//+
c0 = 0.0632539;
//+
Cylinder(3) = {10.701928, 3.242481, 0.000000, 0.000000, 0.000000, 1.000000, 0.514203, 2*Pi};
//+
c1 = 0.0514203;
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
Save "cad_471.msh";
