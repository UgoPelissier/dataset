//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.383316, -4.178652, 0.000000, 31.610827, 8.432754, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {6.097338, 1.490474, 0.000000, 0.000000, 0.000000, 1.000000, 1.126687, 2*Pi};
//+
c0 = 0.11266870000000001;
//+
Cylinder(3) = {4.125030, -0.981990, 0.000000, 0.000000, 0.000000, 1.000000, 1.088671, 2*Pi};
//+
c1 = 0.1088671;
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
Save "cad_328.msh";
