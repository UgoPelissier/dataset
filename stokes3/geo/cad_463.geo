//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.817034, -3.657904, 0.000000, 38.215526, 9.090332, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {20.736275, -1.000094, 0.000000, 0.000000, 0.000000, 1.000000, 1.077931, 2*Pi};
//+
c0 = 0.1077931;
//+
Cylinder(3) = {7.637369, 1.650048, 0.000000, 0.000000, 0.000000, 1.000000, 0.816598, 2*Pi};
//+
c1 = 0.0816598;
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
Save "cad_463.msh";
