//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.561044, -3.866752, 0.000000, 35.032484, 7.981067, 1.000000};
//+
MeshSize {1} = 0.846515;
//+
MeshSize {2} = 0.846515;
//+
MeshSize {3} = 0.714809;
//+
MeshSize {4} = 0.714809;
//+
MeshSize {5} = 1.373915;
//+
MeshSize {6} = 1.373915;
//+
MeshSize {7} = 1.346307;
//+
MeshSize {8} = 1.346307;
//+
Cylinder(2) = {22.021860, 0.613390, 0.000000, 0.000000, 0.000000, 1.000000, 0.552874, 2*Pi};
//+
MeshSize {9} = 0.055287;
//+
MeshSize {10} = 0.055287;
//+
Cylinder(3) = {8.730619, 1.641049, 0.000000, 0.000000, 0.000000, 1.000000, 1.387656, 2*Pi};
//+
MeshSize {11} = 0.138766;
//+
MeshSize {12} = 0.138766;
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
Save "../geo_unrolled/cad_481.geo_unrolled";
