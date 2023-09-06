//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.533940, -4.160542, 0.000000, 33.959133, 9.989584, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {23.017794, -0.415863, 0.000000, 0.000000, 0.000000, 1.000000, 1.178078, 2*Pi};
//+
c0 = 0.1178078;
//+
Cylinder(3) = {27.377052, -0.437698, 0.000000, 0.000000, 0.000000, 1.000000, 0.670689, 2*Pi};
//+
c1 = 0.0670689;
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
Save "cad_485.msh";
