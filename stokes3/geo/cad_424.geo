//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.729924, -3.631639, 0.000000, 36.257628, 7.545972, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {21.563926, 1.233980, 0.000000, 0.000000, 0.000000, 1.000000, 0.543482, 2*Pi};
//+
c0 = 0.054348200000000006;
//+
Cylinder(3) = {6.299707, -1.629828, 0.000000, 0.000000, 0.000000, 1.000000, 1.289188, 2*Pi};
//+
c1 = 0.1289188;
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
Save "cad_424.msh";
