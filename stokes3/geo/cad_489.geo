//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.692358, -4.197699, 0.000000, 35.705899, 8.807718, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {34.589193, 1.120268, 0.000000, 0.000000, 0.000000, 1.000000, 1.282583, 2*Pi};
//+
c0 = 0.12825830000000002;
//+
Cylinder(3) = {4.277080, 0.265984, 0.000000, 0.000000, 0.000000, 1.000000, 0.595684, 2*Pi};
//+
c1 = 0.0595684;
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
Save "cad_489.msh";