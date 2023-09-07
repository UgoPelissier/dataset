//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.548563, -4.279216, 0.000000, 34.164890, 9.032710, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {12.702491, -0.011110, 0.000000, 0.000000, 0.000000, 1.000000, 0.710532, 2*Pi};
//+
c0 = 0.07105324821106564;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {24.324155, -1.153390, 0.000000, 0.000000, 0.000000, 1.000000, 1.354326, 2*Pi};
//+
c1 = 0.13543260872408197;
//+
MeshSize {11, 12} = c1;
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
Mesh 2;
