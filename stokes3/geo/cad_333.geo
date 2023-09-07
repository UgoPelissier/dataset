//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.496355, -3.955561, 0.000000, 38.834889, 8.326509, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {32.850720, 1.407363, 0.000000, 0.000000, 0.000000, 1.000000, 0.649144, 2*Pi};
//+
c0 = 0.06491444926667661;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {3.543064, 0.097465, 0.000000, 0.000000, 0.000000, 1.000000, 1.223564, 2*Pi};
//+
c1 = 0.1223563616898479;
//+
MeshSize {11, 12} = c1;
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
Mesh 2;
