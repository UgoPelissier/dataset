//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.627200, -3.276829, 0.000000, 34.742475, 8.337774, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {27.729438, -0.717440, 0.000000, 0.000000, 0.000000, 1.000000, 1.242585, 2*Pi};
//+
c0 = 0.12425850000000001;
//+
Cylinder(3) = {11.159233, 0.299205, 0.000000, 0.000000, 0.000000, 1.000000, 0.708262, 2*Pi};
//+
c1 = 0.07082619999999999;
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
Save "cad_448.msh";
