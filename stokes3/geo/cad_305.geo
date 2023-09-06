//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.708966, -3.669184, 0.000000, 38.157569, 8.616574, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {10.307889, -2.158100, 0.000000, 0.000000, 0.000000, 1.000000, 0.567795, 2*Pi};
//+
c0 = 0.05677950000000001;
//+
Cylinder(3) = {15.000038, 2.004082, 0.000000, 0.000000, 0.000000, 1.000000, 1.469102, 2*Pi};
//+
c1 = 0.1469102;
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
Save "cad_305.msh";