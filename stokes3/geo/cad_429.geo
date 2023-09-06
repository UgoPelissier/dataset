//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.995686, -3.940510, 0.000000, 30.455838, 9.832574, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {28.844574, -1.794482, 0.000000, 0.000000, 0.000000, 1.000000, 1.057340, 2*Pi};
//+
c0 = 0.105734;
//+
Cylinder(3) = {27.665959, 2.232777, 0.000000, 0.000000, 0.000000, 1.000000, 1.265435, 2*Pi};
//+
c1 = 0.1265435;
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
Save "cad_429.msh";
