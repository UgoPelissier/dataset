//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.114013, -3.893423, 0.000000, 31.872454, 7.999374, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {8.412246, 0.185154, 0.000000, 0.000000, 0.000000, 1.000000, 0.701673, 2*Pi};
//+
c0 = 0.0701673;
//+
Cylinder(3) = {22.500456, -1.637062, 0.000000, 0.000000, 0.000000, 1.000000, 0.539406, 2*Pi};
//+
c1 = 0.053940600000000005;
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
Save "cad_332.msh";
