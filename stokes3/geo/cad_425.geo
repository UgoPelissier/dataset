//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.617965, -3.707333, 0.000000, 35.929614, 7.520836, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {14.204039, -1.719937, 0.000000, 0.000000, 0.000000, 1.000000, 1.352083, 2*Pi};
//+
c0 = 0.1352083;
//+
Cylinder(3) = {24.125070, 2.739707, 0.000000, 0.000000, 0.000000, 1.000000, 0.519078, 2*Pi};
//+
c1 = 0.051907800000000004;
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
Save "cad_425.msh";
