//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.286524, -3.327757, 0.000000, 31.161959, 7.918938, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {25.401479, -1.287712, 0.000000, 0.000000, 0.000000, 1.000000, 1.131273, 2*Pi};
//+
c0 = 0.1131273;
//+
Cylinder(3) = {17.977135, 2.762924, 0.000000, 0.000000, 0.000000, 1.000000, 0.571344, 2*Pi};
//+
c1 = 0.0571344;
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
Save "cad_393.msh";
