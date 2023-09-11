//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.740089, -3.066191, 0.000000, 31.337790, 8.027563, 1.000000};
//+
l = [3.2328018293075425, 3.2328018293075425, 1.2372185993859142, 1.2372185993859142, 1.2372185993859142, 1.3891207670171728, 1.3891207670171728, 1.3891207670171728, 3.2328018293075425, 3.2328018293075425];
//+
MeshSize {1} = 3.232802;
//+
MeshSize {2} = 3.232802;
//+
MeshSize {3} = 1.237219;
//+
MeshSize {4} = 1.237219;
//+
MeshSize {5} = 1.237219;
//+
MeshSize {6} = 1.389121;
//+
MeshSize {7} = 1.389121;
//+
MeshSize {8} = 1.389121;
//+
Cylinder(2) = {19.048204, -1.675679, 0.000000, 0.000000, 0.000000, 1.000000, 0.731476, 2*Pi};
//+
c0 = 0.07314762345560259;
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
