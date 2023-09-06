//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.880132, -3.889716, 0.000000, 33.232386, 8.607512, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {9.339876, 2.402424, 0.000000, 0.000000, 0.000000, 1.000000, 0.606771, 2*Pi};
//+
c0 = 0.0606771;
//+
Cylinder(3) = {6.302168, 2.259020, 0.000000, 0.000000, 0.000000, 1.000000, 1.111982, 2*Pi};
//+
c1 = 0.11119820000000001;
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
Save "cad_430.msh";
