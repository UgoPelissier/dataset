//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.201707, -3.450624, 0.000000, 37.837392, 8.215016, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {15.030888, 0.707150, 0.000000, 0.000000, 0.000000, 1.000000, 1.017743, 2*Pi};
//+
c0 = 0.10177430000000001;
//+
Cylinder(3) = {10.821887, 2.709023, 0.000000, 0.000000, 0.000000, 1.000000, 1.415009, 2*Pi};
//+
c1 = 0.1415009;
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
Save "cad_382.msh";
