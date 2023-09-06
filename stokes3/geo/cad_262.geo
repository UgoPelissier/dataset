//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.677139, -3.890537, 0.000000, 39.161866, 8.109782, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {38.184197, -2.174593, 0.000000, 0.000000, 0.000000, 1.000000, 0.905047, 2*Pi};
//+
c0 = 0.09050470000000001;
//+
Cylinder(3) = {7.348375, 1.139253, 0.000000, 0.000000, 0.000000, 1.000000, 0.932134, 2*Pi};
//+
c1 = 0.0932134;
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
Save "cad_262.msh";