//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.562138, -4.045344, 0.000000, 33.421881, 9.226358, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {2.040277, 2.895398, 0.000000, 0.000000, 0.000000, 1.000000, 0.976539, 2*Pi};
//+
c0 = 0.09765390000000002;
//+
Cylinder(3) = {21.405249, -0.462657, 0.000000, 0.000000, 0.000000, 1.000000, 0.834657, 2*Pi};
//+
c1 = 0.0834657;
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
Save "cad_391.msh";
