//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.688498, -4.808637, 0.000000, 36.599812, 9.871970, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {27.792593, -2.586496, 0.000000, 0.000000, 0.000000, 1.000000, 1.482380, 2*Pi};
//+
c0 = 0.148238;
//+
Cylinder(3) = {6.260238, 3.803870, 0.000000, 0.000000, 0.000000, 1.000000, 0.588726, 2*Pi};
//+
c1 = 0.0588726;
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
Save "cad_304.msh";
