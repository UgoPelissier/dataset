//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.496355, -3.955561, 0.000000, 38.834888, 8.326510, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {32.850720, 1.407363, 0.000000, 0.000000, 0.000000, 1.000000, 0.649144, 2*Pi};
//+
c0 = 0.06491440000000001;
//+
Cylinder(3) = {3.543064, 0.097465, 0.000000, 0.000000, 0.000000, 1.000000, 1.223564, 2*Pi};
//+
c1 = 0.12235640000000002;
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
Save "cad_333.msh";
