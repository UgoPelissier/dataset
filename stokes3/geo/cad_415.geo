//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.301842, -4.519317, 0.000000, 31.917025, 9.639302, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {8.891026, 0.517275, 0.000000, 0.000000, 0.000000, 1.000000, 1.056323, 2*Pi};
//+
c0 = 0.1056323;
//+
Cylinder(3) = {29.832172, -3.328308, 0.000000, 0.000000, 0.000000, 1.000000, 0.537736, 2*Pi};
//+
c1 = 0.053773600000000005;
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
Save "cad_415.msh";
