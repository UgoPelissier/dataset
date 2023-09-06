//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.238005, -3.246412, 0.000000, 31.904363, 7.830780, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {30.069643, 0.556323, 0.000000, 0.000000, 0.000000, 1.000000, 0.972671, 2*Pi};
//+
c0 = 0.0972671;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
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
Save "cad_019.msh";