//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.004110, -3.560522, 0.000000, 36.866413, 8.985719, 1.000000};
//+
MeshSize {1} = 0.358831;
//+
MeshSize {2} = 0.358831;
//+
MeshSize {3} = 0.535660;
//+
MeshSize {4} = 0.535660;
//+
MeshSize {5} = 3.823049;
//+
MeshSize {6} = 3.823049;
//+
MeshSize {7} = 3.665582;
//+
MeshSize {8} = 3.665582;
//+
Cylinder(2) = {3.210534, -0.297644, 0.000000, 0.000000, 0.000000, 1.000000, 0.546140, 2*Pi};
//+
MeshSize {9} = 0.054614;
//+
MeshSize {10} = 0.054614;
//+
Cylinder(3) = {19.193973, 1.428588, 0.000000, 0.000000, 0.000000, 1.000000, 0.812481, 2*Pi};
//+
MeshSize {11} = 0.081248;
//+
MeshSize {12} = 0.081248;
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
Save "../geo_unrolled/cad_344.geo_unrolled";
