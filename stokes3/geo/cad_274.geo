//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.664144, -4.059808, 0.000000, 29.969163, 8.836062, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {6.672851, -0.621678, 0.000000, 0.000000, 0.000000, 1.000000, 0.711851, 2*Pi};
//+
c0 = 0.0711851;
//+
Cylinder(3) = {8.226171, 2.901264, 0.000000, 0.000000, 0.000000, 1.000000, 0.837755, 2*Pi};
//+
c1 = 0.0837755;
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
Save "cad_274.msh";
