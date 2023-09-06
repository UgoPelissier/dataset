//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.784307, -3.781795, 0.000000, 32.092080, 9.161234, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {30.459473, -1.030138, 0.000000, 0.000000, 0.000000, 1.000000, 1.456702, 2*Pi};
//+
c0 = 0.1456702;
//+
Cylinder(3) = {25.673989, 3.390738, 0.000000, 0.000000, 0.000000, 1.000000, 1.329983, 2*Pi};
//+
c1 = 0.13299829999999999;
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
Save "cad_351.msh";
