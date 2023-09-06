//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.737118, -3.689002, 0.000000, 33.046463, 8.157450, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {30.741518, 2.509027, 0.000000, 0.000000, 0.000000, 1.000000, 1.184640, 2*Pi};
//+
c0 = 0.118464;
//+
Cylinder(3) = {9.617403, 1.981664, 0.000000, 0.000000, 0.000000, 1.000000, 1.308809, 2*Pi};
//+
c1 = 0.1308809;
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
Save "cad_400.msh";