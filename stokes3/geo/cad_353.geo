//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.682659, -4.205332, 0.000000, 31.055292, 8.784618, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {11.971499, -0.628031, 0.000000, 0.000000, 0.000000, 1.000000, 1.056599, 2*Pi};
//+
c0 = 0.10565990000000001;
//+
Cylinder(3) = {4.128045, 0.737785, 0.000000, 0.000000, 0.000000, 1.000000, 0.755016, 2*Pi};
//+
c1 = 0.0755016;
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
Save "cad_353.msh";