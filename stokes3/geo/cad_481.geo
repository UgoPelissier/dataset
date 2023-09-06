//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.072920, -3.736008, 0.000000, 32.433044, 8.614706, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {30.324609, 1.418031, 0.000000, 0.000000, 0.000000, 1.000000, 0.766436, 2*Pi};
//+
c0 = 0.0766436;
//+
Cylinder(3) = {14.174475, 2.963882, 0.000000, 0.000000, 0.000000, 1.000000, 1.280937, 2*Pi};
//+
c1 = 0.1280937;
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
Save "cad_481.msh";
