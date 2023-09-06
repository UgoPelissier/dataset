//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.789859, -4.171333, 0.000000, 33.853099, 9.083506, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {27.523094, 2.613251, 0.000000, 0.000000, 0.000000, 1.000000, 0.580959, 2*Pi};
//+
c0 = 0.058095900000000006;
//+
Cylinder(3) = {30.515154, 2.141534, 0.000000, 0.000000, 0.000000, 1.000000, 0.554812, 2*Pi};
//+
c1 = 0.0554812;
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
Save "cad_498.msh";
