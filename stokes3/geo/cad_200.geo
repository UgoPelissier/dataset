//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.173182, -3.280735, 0.000000, 33.250088, 8.385718, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {25.802423, 1.852611, 0.000000, 0.000000, 0.000000, 1.000000, 1.143309, 2*Pi};
//+
c0 = 0.1143309;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
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
Save "cad_200.msh";