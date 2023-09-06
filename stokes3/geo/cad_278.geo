//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.628080, -4.456834, 0.000000, 33.489019, 9.216416, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {25.671263, 0.825550, 0.000000, 0.000000, 0.000000, 1.000000, 0.884032, 2*Pi};
//+
c0 = 0.08840320000000002;
//+
Cylinder(3) = {32.863252, -1.709611, 0.000000, 0.000000, 0.000000, 1.000000, 0.639830, 2*Pi};
//+
c1 = 0.063983;
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
Save "cad_278.msh";
