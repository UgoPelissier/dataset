//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.402400, -3.979903, 0.000000, 30.870478, 8.551116, 0.000000};
//+
l = [3.1563797194220693, 1.1189868100864426, 1.2514140902504511, 3.1563797194220693];
//+
MeshSize {1} = 3.156380;
//+
MeshSize {2} = 1.118987;
//+
MeshSize {3} = 1.251414;
//+
MeshSize {4} = 3.156380;
//+
Disk(2) = {19.248923, -1.702101, 0.000000, 1.047937, 1.047937};
//+
c0 = 0.10479372131356982;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
