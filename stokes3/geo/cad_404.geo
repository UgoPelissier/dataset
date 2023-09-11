//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.472826, -3.472387, 0.000000, 32.648268, 8.307658, 1.000000};
//+
MeshSize {1} = 0.632411;
//+
MeshSize {2} = 0.632411;
//+
MeshSize {3} = 1.299876;
//+
MeshSize {4} = 1.299876;
//+
MeshSize {5} = 0.632411;
//+
MeshSize {6} = 0.632411;
//+
MeshSize {7} = 3.338055;
//+
MeshSize {8} = 3.338055;
//+
Cylinder(2) = {3.962925, 2.402108, 0.000000, 0.000000, 0.000000, 1.000000, 0.508930, 2*Pi};
//+
MeshSize {9} = 0.050893;
//+
MeshSize {10} = 0.050893;
//+
Cylinder(3) = {19.747203, -1.068376, 0.000000, 0.000000, 0.000000, 1.000000, 0.589480, 2*Pi};
//+
MeshSize {11} = 0.058948;
//+
MeshSize {12} = 0.058948;
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
Save "../geo_unrolled/cad_404.geo_unrolled";
