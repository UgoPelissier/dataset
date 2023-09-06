//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.953005, -3.836447, 0.000000, 36.130666, 8.596138, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {10.803631, 1.657639, 0.000000, 0.000000, 0.000000, 1.000000, 1.318966, 2*Pi};
//+
c0 = 0.1318966;
//+
Cylinder(3) = {29.505876, -0.781031, 0.000000, 0.000000, 0.000000, 1.000000, 0.999303, 2*Pi};
//+
c1 = 0.09993030000000001;
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
Save "cad_256.msh";
