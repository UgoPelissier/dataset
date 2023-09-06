//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.276384, -4.285368, 0.000000, 38.757531, 9.424702, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {12.623729, -3.185869, 0.000000, 0.000000, 0.000000, 1.000000, 0.573997, 2*Pi};
//+
c0 = 0.0573997;
//+
Cylinder(3) = {30.333488, -1.104584, 0.000000, 0.000000, 0.000000, 1.000000, 0.832655, 2*Pi};
//+
c1 = 0.0832655;
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
Save "cad_479.msh";
