//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.089461, -4.079764, 0.000000, 35.262062, 9.307794, 0.000000};
//+
l = [3.5656541058823183, 0.7561086373596365, 0.19558427238924503, 3.5656541058823183];
//+
MeshSize {1} = 3.565654;
//+
MeshSize {2} = 0.756109;
//+
MeshSize {3} = 0.195584;
//+
MeshSize {4} = 3.565654;
//+
Disk(2) = {33.112689, 3.846257, 0.000000, 0.675065, 0.675065};
//+
c0 = 0.06750647754809631;
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
