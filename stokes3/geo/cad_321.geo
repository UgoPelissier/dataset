//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.102312, -4.292591, 0.000000, 36.521243, 9.608210, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {13.705624, 1.415694, 0.000000, 0.000000, 0.000000, 1.000000, 1.109050, 2*Pi};
//+
c0 = 0.11090500000000002;
//+
Cylinder(3) = {9.564128, 2.028233, 0.000000, 0.000000, 0.000000, 1.000000, 1.392374, 2*Pi};
//+
c1 = 0.1392374;
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
Save "cad_321.msh";
