//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.343576, -3.850525, 0.000000, 35.692784, 9.473868, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {22.991169, 1.056602, 0.000000, 0.000000, 0.000000, 1.000000, 0.669935, 2*Pi};
//+
c0 = 0.0669935;
//+
Cylinder(3) = {30.882215, -0.102191, 0.000000, 0.000000, 0.000000, 1.000000, 1.495664, 2*Pi};
//+
c1 = 0.14956640000000002;
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
Save "cad_494.msh";