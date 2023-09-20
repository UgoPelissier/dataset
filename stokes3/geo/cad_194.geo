//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.028207, -3.753947, 0.000000, 39.447381, 8.909016, 1.000000};
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
Cylinder(2) = {34.802718, -0.069252, 0.000000, 0.000000, 0.000000, 1.000000, 0.809053, 2*Pi};
//+
MeshSize {9} = 0.080905;
//+
MeshSize {10} = 0.080905;
//+
Cylinder(3) = {8.637611, 0.235630, 0.000000, 0.000000, 0.000000, 1.000000, 0.500683, 2*Pi};
//+
MeshSize {11} = 0.050068;
//+
MeshSize {12} = 0.050068;
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
Save "../geo_unrolled/cad_194.geo_unrolled";
