//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.271956, -4.650234, 0.000000, 31.755170, 9.449842, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {18.726518, -3.256316, 0.000000, 0.000000, 0.000000, 1.000000, 0.664375, 2*Pi};
//+
c0 = 0.06643750000000001;
//+
Cylinder(3) = {14.926406, -0.883442, 0.000000, 0.000000, 0.000000, 1.000000, 1.035925, 2*Pi};
//+
c1 = 0.1035925;
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
Save "cad_292.msh";
