//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.880125, -4.004687, 0.000000, 34.276010, 8.195564, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {32.917959, -1.073036, 0.000000, 0.000000, 0.000000, 1.000000, 1.450254, 2*Pi};
//+
c0 = 0.1450254;
//+
Cylinder(3) = {25.759745, 1.892618, 0.000000, 0.000000, 0.000000, 1.000000, 0.958449, 2*Pi};
//+
c1 = 0.09584490000000001;
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
Save "cad_273.msh";
