//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.402400, -3.979903, 0.000000, 30.870478, 8.551116, 1.000000};
//+
l = [3.1563797194220693, 3.1563797194220693, 1.1189868100864426, 1.1189868100864426, 1.1189868100864426, 1.2514140902504511, 1.2514140902504511, 1.2514140902504511, 3.1563797194220693, 3.1563797194220693];
//+
MeshSize {1} = 3.156380;
//+
MeshSize {2} = 3.156380;
//+
MeshSize {3} = 1.118987;
//+
MeshSize {4} = 1.118987;
//+
MeshSize {5} = 1.118987;
//+
MeshSize {6} = 1.251414;
//+
MeshSize {7} = 1.251414;
//+
MeshSize {8} = 1.251414;
//+
Cylinder(2) = {19.248923, -1.702101, 0.000000, 0.000000, 0.000000, 1.000000, 1.047937, 2*Pi};
//+
c0 = 0.10479372131356982;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
