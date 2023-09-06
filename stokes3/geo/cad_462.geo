//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.176174, -2.930048, 0.000000, 30.519902, 7.771862, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {24.988654, 2.108843, 0.000000, 0.000000, 0.000000, 1.000000, 0.878911, 2*Pi};
//+
c0 = 0.0878911;
//+
Cylinder(3) = {15.172922, 1.244778, 0.000000, 0.000000, 0.000000, 1.000000, 0.590533, 2*Pi};
//+
c1 = 0.0590533;
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
Save "cad_462.msh";
