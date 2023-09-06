//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.577934, -3.613533, 0.000000, 34.275445, 8.359350, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {27.321207, -0.337870, 0.000000, 0.000000, 0.000000, 1.000000, 0.624237, 2*Pi};
//+
c0 = 0.062423700000000006;
//+
Cylinder(3) = {29.892056, -0.490811, 0.000000, 0.000000, 0.000000, 1.000000, 0.500676, 2*Pi};
//+
c1 = 0.050067600000000004;
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
Save "cad_275.msh";
