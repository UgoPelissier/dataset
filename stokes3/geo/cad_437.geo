//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.178879, -3.412100, 0.000000, 36.947465, 8.004830, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {33.679626, 2.373322, 0.000000, 0.000000, 0.000000, 1.000000, 1.218375, 2*Pi};
//+
c0 = 0.1218375;
//+
Cylinder(3) = {13.474761, 0.190653, 0.000000, 0.000000, 0.000000, 1.000000, 0.884087, 2*Pi};
//+
c1 = 0.0884087;
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
Save "cad_437.msh";
