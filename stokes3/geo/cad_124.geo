//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.117416, -3.602151, 0.000000, 32.832960, 9.036564, 1.000000};
//+
MeshSize {1} = 3.325872;
//+
MeshSize {2} = 3.325872;
//+
MeshSize {3} = 0.856390;
//+
MeshSize {4} = 0.856390;
//+
MeshSize {5} = 3.325872;
//+
MeshSize {6} = 3.325872;
//+
MeshSize {7} = 0.856390;
//+
MeshSize {8} = 0.856390;
//+
Cylinder(2) = {24.638144, 0.955517, 0.000000, 0.000000, 0.000000, 1.000000, 0.915846, 2*Pi};
//+
MeshSize {9} = 0.091585;
//+
MeshSize {10} = 0.091585;
//+
Cylinder(3) = {18.097484, -0.263614, 0.000000, 0.000000, 0.000000, 1.000000, 1.037518, 2*Pi};
//+
MeshSize {11} = 0.103752;
//+
MeshSize {12} = 0.103752;
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
Save "../geo_unrolled/cad_124.geo_unrolled";
