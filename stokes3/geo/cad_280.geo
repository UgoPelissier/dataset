//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.517749, -3.609905, 0.000000, 36.960687, 8.238856, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {22.259559, 0.233048, 0.000000, 0.000000, 0.000000, 1.000000, 1.477697, 2*Pi};
//+
c0 = 0.1477697;
//+
Cylinder(3) = {32.261963, 0.563376, 0.000000, 0.000000, 0.000000, 1.000000, 0.865412, 2*Pi};
//+
c1 = 0.0865412;
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
Save "cad_280.msh";
