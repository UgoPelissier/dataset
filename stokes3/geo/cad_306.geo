//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.884552, -3.939448, 0.000000, 32.902574, 8.865060, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {3.426979, -0.181829, 0.000000, 0.000000, 0.000000, 1.000000, 1.364051, 2*Pi};
//+
c0 = 0.1364051;
//+
Cylinder(3) = {21.994390, 1.659188, 0.000000, 0.000000, 0.000000, 1.000000, 0.662657, 2*Pi};
//+
c1 = 0.06626570000000001;
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
Save "cad_306.msh";
