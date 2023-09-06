//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.823688, -3.605040, 0.000000, 29.264349, 9.172346, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {13.409253, 3.710182, 0.000000, 0.000000, 0.000000, 1.000000, 1.113701, 2*Pi};
//+
c0 = 0.11137010000000001;
//+
Cylinder(3) = {11.610249, 0.369071, 0.000000, 0.000000, 0.000000, 1.000000, 0.782829, 2*Pi};
//+
c1 = 0.0782829;
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
Save "cad_356.msh";
