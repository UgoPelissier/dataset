//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.731786, -3.169804, 0.000000, 30.595334, 8.239476, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {9.549653, 1.675122, 0.000000, 0.000000, 0.000000, 1.000000, 1.357922, 2*Pi};
//+
c0 = 0.1357922;
//+
Cylinder(3) = {24.179368, 3.083204, 0.000000, 0.000000, 0.000000, 1.000000, 0.905360, 2*Pi};
//+
c1 = 0.090536;
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
Save "cad_497.msh";
