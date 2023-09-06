//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.790721, -4.061603, 0.000000, 38.164294, 8.842264, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {25.616882, -1.282050, 0.000000, 0.000000, 0.000000, 1.000000, 1.147000, 2*Pi};
//+
c0 = 0.11470000000000001;
//+
Cylinder(3) = {15.567115, 2.234288, 0.000000, 0.000000, 0.000000, 1.000000, 1.465717, 2*Pi};
//+
c1 = 0.1465717;
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
Save "cad_258.msh";
