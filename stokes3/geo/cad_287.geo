//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.321802, -3.672815, 0.000000, 36.881077, 8.178144, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {2.897623, -1.040193, 0.000000, 0.000000, 0.000000, 1.000000, 1.002041, 2*Pi};
//+
c0 = 0.1002041;
//+
Cylinder(3) = {17.302843, -1.780326, 0.000000, 0.000000, 0.000000, 1.000000, 1.344847, 2*Pi};
//+
c1 = 0.13448469999999998;
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
Save "cad_287.msh";
