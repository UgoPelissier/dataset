//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.705495, -3.838322, 0.000000, 37.844494, 9.148208, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {28.828229, -0.488561, 0.000000, 0.000000, 0.000000, 1.000000, 1.199311, 2*Pi};
//+
c0 = 0.11993110000000001;
//+
Cylinder(3) = {13.046775, 0.462682, 0.000000, 0.000000, 0.000000, 1.000000, 1.197057, 2*Pi};
//+
c1 = 0.11970570000000001;
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
Save "cad_380.msh";
