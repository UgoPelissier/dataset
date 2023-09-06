//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.418239, -3.844325, 0.000000, 33.418861, 7.964384, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {21.503532, 1.540574, 0.000000, 0.000000, 0.000000, 1.000000, 1.145260, 2*Pi};
//+
c0 = 0.114526;
//+
Cylinder(3) = {4.747228, -1.476756, 0.000000, 0.000000, 0.000000, 1.000000, 0.951001, 2*Pi};
//+
c1 = 0.0951001;
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
Save "cad_266.msh";
