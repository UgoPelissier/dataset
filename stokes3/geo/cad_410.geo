//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.657921, -3.544102, 0.000000, 36.355219, 8.139846, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {13.559913, 0.862446, 0.000000, 0.000000, 0.000000, 1.000000, 0.570874, 2*Pi};
//+
c0 = 0.0570874;
//+
Cylinder(3) = {15.395734, -1.065761, 0.000000, 0.000000, 0.000000, 1.000000, 1.208434, 2*Pi};
//+
c1 = 0.1208434;
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
Save "cad_410.msh";