//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.179907, -4.364666, 0.000000, 36.905963, 9.948144, 0.000000};
//+
l = [0.7580303579513599, 0.7580303579513599, 3.7417952866601887, 1.6769610235429884, 3.7417952866601887, 1.632730252829302, 0.3399703215636716, 0.3399703215636716];
//+
MeshSize {1} = 0.758030;
//+
MeshSize {2} = 0.758030;
//+
MeshSize {3} = 3.741795;
//+
MeshSize {4} = 1.676961;
//+
Disk(2) = {4.373378, 3.462648, 0.000000, 1.299564, 1.299564};
//+
c0 = 0.12995643512555063;
//+
MeshSize {5} = c0;
//+
Disk(3) = {20.783497, 1.367905, 0.000000, 0.511297, 0.511297};
//+
c1 = 0.05112972679780298;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
