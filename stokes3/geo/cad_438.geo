//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.791067, -3.711682, 0.000000, 38.706472, 8.446696, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {15.033040, 2.265914, 0.000000, 0.000000, 0.000000, 1.000000, 1.412253, 2*Pi};
//+
c0 = 0.1412253;
//+
Cylinder(3) = {22.335526, 1.347504, 0.000000, 0.000000, 0.000000, 1.000000, 0.650090, 2*Pi};
//+
c1 = 0.065009;
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
Save "cad_438.msh";
