//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.117351, -4.181403, 0.000000, 34.234237, 9.799973, 1.000000};
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
Cylinder(2) = {15.585585, 1.701374, 0.000000, 0.000000, 0.000000, 1.000000, 0.618512, 2*Pi};
//+
MeshSize {9} = 0.061851;
//+
MeshSize {10} = 0.061851;
//+
Cylinder(3) = {26.867130, -2.077967, 0.000000, 0.000000, 0.000000, 1.000000, 0.994168, 2*Pi};
//+
MeshSize {11} = 0.099417;
//+
MeshSize {12} = 0.099417;
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
Save "../geo_unrolled/cad_440.geo_unrolled";
