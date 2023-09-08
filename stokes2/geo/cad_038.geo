//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.787375, -4.715146, 0.000000, 37.934293, 9.646483, 0.000000};
//+
l = [1.006690383007391, 3.9020907455497347, 3.9020907455497347, 0.7087372066738143];
//+
MeshSize {1} = 1.006690;
//+
MeshSize {2} = 3.902091;
//+
MeshSize {3} = 3.902091;
//+
MeshSize {4} = 0.708737;
//+
Disk(2) = {8.613005, 3.053947, 0.000000, 0.960303, 0.960303};
//+
c0 = 0.09603032346789421;
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
