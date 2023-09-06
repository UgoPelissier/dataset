//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.706790, -3.595875, 0.000000, 38.938913, 7.513226, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {28.212113, 0.732333, 0.000000, 0.000000, 0.000000, 1.000000, 1.445716, 2*Pi};
//+
c0 = 0.1445716;
//+
Cylinder(3) = {32.518544, 1.054040, 0.000000, 0.000000, 0.000000, 1.000000, 0.938972, 2*Pi};
//+
c1 = 0.09389720000000001;
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
Save "cad_381.msh";
