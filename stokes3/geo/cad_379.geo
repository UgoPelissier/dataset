//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.680606, -3.974764, 0.000000, 33.451676, 9.459472, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {16.467725, -1.227717, 0.000000, 0.000000, 0.000000, 1.000000, 1.054911, 2*Pi};
//+
c0 = 0.1054911;
//+
Cylinder(3) = {8.662010, -1.828960, 0.000000, 0.000000, 0.000000, 1.000000, 0.844356, 2*Pi};
//+
c1 = 0.0844356;
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
Save "cad_379.msh";
