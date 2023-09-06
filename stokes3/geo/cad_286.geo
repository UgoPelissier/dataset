//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.508825, -4.011651, 0.000000, 38.120460, 8.111378, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {18.223929, -0.949198, 0.000000, 0.000000, 0.000000, 1.000000, 0.650085, 2*Pi};
//+
c0 = 0.06500850000000001;
//+
Cylinder(3) = {35.305145, 1.952132, 0.000000, 0.000000, 0.000000, 1.000000, 0.919369, 2*Pi};
//+
c1 = 0.0919369;
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
Save "cad_286.msh";
