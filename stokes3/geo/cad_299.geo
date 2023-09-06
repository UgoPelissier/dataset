//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.802168, -3.932549, 0.000000, 39.091868, 9.454790, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {14.326431, 0.420906, 0.000000, 0.000000, 0.000000, 1.000000, 0.984679, 2*Pi};
//+
c0 = 0.0984679;
//+
Cylinder(3) = {36.410370, 0.022628, 0.000000, 0.000000, 0.000000, 1.000000, 0.888381, 2*Pi};
//+
c1 = 0.0888381;
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
Save "cad_299.msh";
