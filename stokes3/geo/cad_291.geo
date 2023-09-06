//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.567821, -3.610982, 0.000000, 39.074362, 8.091930, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {10.346250, -1.496935, 0.000000, 0.000000, 0.000000, 1.000000, 1.300817, 2*Pi};
//+
c0 = 0.1300817;
//+
Cylinder(3) = {27.778293, 1.904459, 0.000000, 0.000000, 0.000000, 1.000000, 0.818058, 2*Pi};
//+
c1 = 0.0818058;
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
Save "cad_291.msh";
