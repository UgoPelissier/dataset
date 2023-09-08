//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.929084, -3.146059, 0.000000, 31.745393, 7.951040, 0.000000};
//+
l = [3.2915440505135005, 0.9009693911815225, 1.0751326163708348, 3.2915440505135005];
//+
MeshSize {1} = 3.291544;
//+
MeshSize {2} = 0.900969;
//+
MeshSize {3} = 1.075133;
//+
MeshSize {4} = 3.291544;
//+
Disk(2) = {22.960315, -1.518770, 0.000000, 0.839825, 0.839825};
//+
c0 = 0.08398246567772584;
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
