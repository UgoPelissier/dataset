//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.787308, -4.296289, 0.000000, 33.766070, 8.947416, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {12.735319, -1.083180, 0.000000, 0.000000, 0.000000, 1.000000, 0.567667, 2*Pi};
//+
c0 = 0.0567667;
//+
Cylinder(3) = {14.765482, 0.451586, 0.000000, 0.000000, 0.000000, 1.000000, 0.792833, 2*Pi};
//+
c1 = 0.0792833;
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
Save "cad_442.msh";
