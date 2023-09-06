//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.348095, -3.544666, 0.000000, 32.416983, 9.015908, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {6.373633, 3.874261, 0.000000, 0.000000, 0.000000, 1.000000, 1.074907, 2*Pi};
//+
c0 = 0.10749070000000001;
//+
Cylinder(3) = {8.555208, -0.837266, 0.000000, 0.000000, 0.000000, 1.000000, 0.606465, 2*Pi};
//+
c1 = 0.060646500000000006;
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
Save "cad_383.msh";
