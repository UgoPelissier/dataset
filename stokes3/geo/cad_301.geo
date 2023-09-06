//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.055909, -3.811739, 0.000000, 32.138207, 9.616262, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {25.671288, -1.396237, 0.000000, 0.000000, 0.000000, 1.000000, 1.339222, 2*Pi};
//+
c0 = 0.1339222;
//+
Cylinder(3) = {25.955225, 1.900429, 0.000000, 0.000000, 0.000000, 1.000000, 1.413980, 2*Pi};
//+
c1 = 0.141398;
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
Save "cad_301.msh";
