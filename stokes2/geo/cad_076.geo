//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.740089, -3.066191, 0.000000, 31.337790, 8.027563, 0.000000};
//+
l = [3.2328018293075425, 1.2372185993859142, 1.3891207670171728, 3.2328018293075425];
//+
MeshSize {1} = 3.232802;
//+
MeshSize {2} = 1.237219;
//+
MeshSize {3} = 1.389121;
//+
MeshSize {4} = 3.232802;
//+
Disk(2) = {19.048204, -1.675679, 0.000000, 0.731476, 0.731476};
//+
c0 = 0.07314762345560259;
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
