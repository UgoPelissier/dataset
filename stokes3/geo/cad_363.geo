//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.220788, -3.141949, 0.000000, 31.722474, 7.953394, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {25.543751, 2.801592, 0.000000, 0.000000, 0.000000, 1.000000, 1.351388, 2*Pi};
//+
c0 = 0.1351388;
//+
Cylinder(3) = {17.558081, -1.665022, 0.000000, 0.000000, 0.000000, 1.000000, 0.567363, 2*Pi};
//+
c1 = 0.056736299999999996;
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
Save "cad_363.msh";