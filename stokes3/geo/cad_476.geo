//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.654343, -4.295210, 0.000000, 37.077167, 9.372728, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {27.706756, 0.831589, 0.000000, 0.000000, 0.000000, 1.000000, 0.694926, 2*Pi};
//+
c0 = 0.0694926;
//+
Cylinder(3) = {12.730861, 1.783427, 0.000000, 0.000000, 0.000000, 1.000000, 0.679917, 2*Pi};
//+
c1 = 0.0679917;
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
Save "cad_476.msh";
