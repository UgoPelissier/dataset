//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.030861, -3.332509, 0.000000, 32.890038, 8.187132, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {24.444368, 2.177119, 0.000000, 0.000000, 0.000000, 1.000000, 1.049726, 2*Pi};
//+
c0 = 0.1049726;
//+
Cylinder(3) = {27.103210, -1.090020, 0.000000, 0.000000, 0.000000, 1.000000, 1.322611, 2*Pi};
//+
c1 = 0.1322611;
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
Save "cad_268.msh";
