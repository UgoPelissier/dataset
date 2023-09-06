//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.948084, -3.117318, 0.000000, 33.085832, 8.071046, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {8.705507, 0.280335, 0.000000, 0.000000, 0.000000, 1.000000, 0.548587, 2*Pi};
//+
c0 = 0.05485870000000001;
//+
Cylinder(3) = {12.941525, 0.381618, 0.000000, 0.000000, 0.000000, 1.000000, 0.974396, 2*Pi};
//+
c1 = 0.09743960000000002;
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
Save "cad_330.msh";
