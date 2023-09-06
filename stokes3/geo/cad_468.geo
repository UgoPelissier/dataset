//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.366970, -3.652870, 0.000000, 35.314526, 9.262206, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {4.037874, -0.171046, 0.000000, 0.000000, 0.000000, 1.000000, 1.190497, 2*Pi};
//+
c0 = 0.1190497;
//+
Cylinder(3) = {2.791528, 3.611478, 0.000000, 0.000000, 0.000000, 1.000000, 0.588446, 2*Pi};
//+
c1 = 0.058844600000000004;
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
Save "cad_468.msh";
