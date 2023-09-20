//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.815475, -3.060647, 0.000000, 38.926778, 7.840311, 1.000000};
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
Cylinder(2) = {12.743956, 3.506806, 0.000000, 0.000000, 0.000000, 1.000000, 0.700851, 2*Pi};
//+
MeshSize {9} = 0.070085;
//+
MeshSize {10} = 0.070085;
//+
Cylinder(3) = {11.582806, 1.528530, 0.000000, 0.000000, 0.000000, 1.000000, 0.991007, 2*Pi};
//+
MeshSize {11} = 0.099101;
//+
MeshSize {12} = 0.099101;
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
Save "../geo_unrolled/cad_148.geo_unrolled";
