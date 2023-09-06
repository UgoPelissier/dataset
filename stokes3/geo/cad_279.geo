//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.276968, -4.415761, 0.000000, 35.256998, 9.000020, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {21.590193, 2.510732, 0.000000, 0.000000, 0.000000, 1.000000, 1.190476, 2*Pi};
//+
c0 = 0.11904760000000002;
//+
Cylinder(3) = {30.128969, 1.425651, 0.000000, 0.000000, 0.000000, 1.000000, 0.801649, 2*Pi};
//+
c1 = 0.0801649;
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
Save "cad_279.msh";
