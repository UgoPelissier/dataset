//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.034649, -3.499704, 0.000000, 32.423199, 8.237762, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {13.372380, 0.417561, 0.000000, 0.000000, 0.000000, 1.000000, 0.560979, 2*Pi};
//+
c0 = 0.056097900000000006;
//+
Cylinder(3) = {28.713917, 0.212650, 0.000000, 0.000000, 0.000000, 1.000000, 1.130754, 2*Pi};
//+
c1 = 0.1130754;
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
Save "cad_298.msh";
