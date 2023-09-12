//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.327289, -4.663432, 0.000000, 37.414064, 9.331810, 1.000000};
//+
MeshSize {1} = 3.802868;
//+
MeshSize {2} = 3.802868;
//+
MeshSize {3} = 0.985427;
//+
MeshSize {4} = 0.985427;
//+
MeshSize {5} = 0.814076;
//+
MeshSize {6} = 0.814076;
//+
MeshSize {7} = 0.985427;
//+
MeshSize {8} = 0.985427;
//+
Cylinder(2) = {27.586360, -0.387744, 0.000000, 0.000000, 0.000000, 1.000000, 1.164144, 2*Pi};
//+
MeshSize {9} = 0.116414;
//+
MeshSize {10} = 0.116414;
//+
Cylinder(3) = {8.221196, -0.656557, 0.000000, 0.000000, 0.000000, 1.000000, 0.711851, 2*Pi};
//+
MeshSize {11} = 0.071185;
//+
MeshSize {12} = 0.071185;
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
Save "../geo_unrolled/cad_166.geo_unrolled";
