//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.960134, -4.748635, 0.000000, 35.812756, 9.785422, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {29.235078, 2.244038, 0.000000, 0.000000, 0.000000, 1.000000, 0.873131, 2*Pi};
//+
c0 = 0.0873131;
//+
Cylinder(3) = {34.914576, 0.523757, 0.000000, 0.000000, 0.000000, 1.000000, 1.055070, 2*Pi};
//+
c1 = 0.105507;
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
Save "cad_361.msh";
