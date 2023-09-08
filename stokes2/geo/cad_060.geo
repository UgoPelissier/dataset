//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.819301, -2.817377, 0.000000, 30.261686, 7.564196, 0.000000};
//+
l = [0.8344422574183753, 3.1310254698501048, 3.1310254698501048, 0.8049243715217088];
//+
MeshSize {1} = 0.834442;
//+
MeshSize {2} = 3.131025;
//+
MeshSize {3} = 3.131025;
//+
MeshSize {4} = 0.804924;
//+
Disk(2) = {9.695939, 1.341490, 0.000000, 1.458173, 1.458173};
//+
c0 = 0.14581728382058962;
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
