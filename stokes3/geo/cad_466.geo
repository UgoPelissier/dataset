//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.997456, -3.169616, 0.000000, 30.345318, 7.679364, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {20.129674, -0.646177, 0.000000, 0.000000, 0.000000, 1.000000, 0.956029, 2*Pi};
//+
c0 = 0.0956029;
//+
Cylinder(3) = {24.727206, 0.801952, 0.000000, 0.000000, 0.000000, 1.000000, 0.925704, 2*Pi};
//+
c1 = 0.0925704;
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
Save "cad_466.msh";