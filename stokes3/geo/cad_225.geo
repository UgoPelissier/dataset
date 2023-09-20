//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.496355, -3.955561, 0.000000, 38.834889, 8.326509, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {32.850720, 1.407363, 0.000000, 0.000000, 0.000000, 1.000000, 0.649144, 2*Pi};
//+
MeshSize {9} = 0.064914;
//+
MeshSize {10} = 0.064914;
//+
Cylinder(3) = {3.543064, 0.097465, 0.000000, 0.000000, 0.000000, 1.000000, 1.223564, 2*Pi};
//+
MeshSize {11} = 0.122356;
//+
MeshSize {12} = 0.122356;
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
//+
Save "../geo_unrolled/cad_225.geo_unrolled";
