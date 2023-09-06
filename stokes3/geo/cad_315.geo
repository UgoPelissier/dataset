//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.383043, -3.311247, 0.000000, 35.706579, 7.593664, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {33.232586, 3.014923, 0.000000, 0.000000, 0.000000, 1.000000, 0.520233, 2*Pi};
//+
c0 = 0.052023299999999995;
//+
Cylinder(3) = {29.499149, -1.495535, 0.000000, 0.000000, 0.000000, 1.000000, 0.780347, 2*Pi};
//+
c1 = 0.07803470000000001;
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
Save "cad_315.msh";
