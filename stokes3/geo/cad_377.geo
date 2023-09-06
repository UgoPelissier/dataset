//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.696708, -4.248710, 0.000000, 30.642123, 8.692854, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {7.286682, 3.121197, 0.000000, 0.000000, 0.000000, 1.000000, 0.783267, 2*Pi};
//+
c0 = 0.07832670000000001;
//+
Cylinder(3) = {27.476831, -0.794121, 0.000000, 0.000000, 0.000000, 1.000000, 0.689021, 2*Pi};
//+
c1 = 0.06890210000000001;
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
Save "cad_377.msh";
