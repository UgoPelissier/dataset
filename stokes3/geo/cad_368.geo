//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.464701, -3.867297, 0.000000, 33.503151, 8.755418, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {22.509765, 3.046727, 0.000000, 0.000000, 0.000000, 1.000000, 1.306540, 2*Pi};
//+
c0 = 0.13065400000000002;
//+
Cylinder(3) = {16.423572, -1.236304, 0.000000, 0.000000, 0.000000, 1.000000, 0.718819, 2*Pi};
//+
c1 = 0.0718819;
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
Save "cad_368.msh";
