//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.350815, -3.873482, 0.000000, 35.036870, 8.309134, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {24.914833, -1.750458, 0.000000, 0.000000, 0.000000, 1.000000, 0.767343, 2*Pi};
//+
c0 = 0.0767343;
//+
Cylinder(3) = {4.490279, 3.041798, 0.000000, 0.000000, 0.000000, 1.000000, 0.749677, 2*Pi};
//+
c1 = 0.07496770000000001;
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
Save "cad_271.msh";
