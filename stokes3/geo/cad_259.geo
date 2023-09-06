//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.430456, -4.377797, 0.000000, 32.156928, 8.776690, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {16.906262, 0.706684, 0.000000, 0.000000, 0.000000, 1.000000, 1.075235, 2*Pi};
//+
c0 = 0.1075235;
//+
Cylinder(3) = {14.526757, -0.955482, 0.000000, 0.000000, 0.000000, 1.000000, 1.272342, 2*Pi};
//+
c1 = 0.12723420000000002;
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
Save "cad_259.msh";
