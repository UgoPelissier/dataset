//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.157698, -4.822159, 0.000000, 36.028750, 9.827122, 1.000000};
//+
MeshSize {1} = 0.343151;
//+
MeshSize {2} = 0.343151;
//+
MeshSize {3} = 0.732561;
//+
MeshSize {4} = 0.732561;
//+
MeshSize {5} = 1.325737;
//+
MeshSize {6} = 1.325737;
//+
MeshSize {7} = 1.192139;
//+
MeshSize {8} = 1.192139;
//+
Cylinder(2) = {23.324876, 1.978476, 0.000000, 0.000000, 0.000000, 1.000000, 1.291466, 2*Pi};
//+
MeshSize {9} = 0.129147;
//+
MeshSize {10} = 0.129147;
//+
Cylinder(3) = {4.553249, -2.627039, 0.000000, 0.000000, 0.000000, 1.000000, 1.481676, 2*Pi};
//+
MeshSize {11} = 0.148168;
//+
MeshSize {12} = 0.148168;
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
Save "../geo_unrolled/cad_297.geo_unrolled";
