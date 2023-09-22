//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.532096, -3.341346, 0.000000, 37.030972, 7.784917, 1.000000};
//+
MeshSize {1} = 3.894886;
//+
MeshSize {2} = 3.894886;
//+
MeshSize {3} = 2.995626;
//+
MeshSize {4} = 2.995626;
//+
MeshSize {5} = 0.423267;
//+
MeshSize {6} = 0.423267;
//+
MeshSize {7} = 0.561812;
//+
MeshSize {8} = 0.561812;
//+
Cylinder(2) = {34.686103, -0.159449, 0.000000, 0.000000, 0.000000, 1.000000, 0.811573, 2*Pi};
//+
MeshSize {9} = 0.081157;
//+
MeshSize {10} = 0.081157;
//+
Cylinder(3) = {13.619187, 2.468120, 0.000000, 0.000000, 0.000000, 1.000000, 1.389726, 2*Pi};
//+
MeshSize {11} = 0.138973;
//+
MeshSize {12} = 0.138973;
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
Save "../geo_unrolled/cad_410.geo_unrolled";
