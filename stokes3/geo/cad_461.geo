//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.236154, -4.250967, 0.000000, 30.542790, 9.827158, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {17.672909, -0.131386, 0.000000, 0.000000, 0.000000, 1.000000, 1.092163, 2*Pi};
//+
c0 = 0.1092163;
//+
Cylinder(3) = {14.247833, 0.541356, 0.000000, 0.000000, 0.000000, 1.000000, 1.322023, 2*Pi};
//+
c1 = 0.1322023;
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
Save "cad_461.msh";
