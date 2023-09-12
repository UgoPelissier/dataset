//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.290703, -3.909659, 0.000000, 38.781374, 8.694028, 1.000000};
//+
MeshSize {1} = 3.931315;
//+
MeshSize {2} = 3.931315;
//+
MeshSize {3} = 0.663617;
//+
MeshSize {4} = 0.663617;
//+
MeshSize {5} = 0.449787;
//+
MeshSize {6} = 0.449787;
//+
MeshSize {7} = 0.663617;
//+
MeshSize {8} = 0.663617;
//+
Cylinder(2) = {32.880636, 0.200763, 0.000000, 0.000000, 0.000000, 1.000000, 0.795482, 2*Pi};
//+
MeshSize {9} = 0.079548;
//+
MeshSize {10} = 0.079548;
//+
Cylinder(3) = {4.205413, -0.652804, 0.000000, 0.000000, 0.000000, 1.000000, 0.594484, 2*Pi};
//+
MeshSize {11} = 0.059448;
//+
MeshSize {12} = 0.059448;
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
Save "../geo_unrolled/cad_454.geo_unrolled";
