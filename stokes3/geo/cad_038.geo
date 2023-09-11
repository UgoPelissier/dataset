//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.787375, -4.715146, 0.000000, 37.934293, 9.646483, 1.000000};
//+
l = [1.006690383007391, 1.006690383007391, 1.006690383007391, 3.9020907455497347, 3.9020907455497347, 3.9020907455497347, 3.9020907455497347, 0.7087372066738143, 0.7087372066738143, 0.7087372066738143];
//+
MeshSize {1} = 1.006690;
//+
MeshSize {2} = 1.006690;
//+
MeshSize {3} = 1.006690;
//+
MeshSize {4} = 3.902091;
//+
MeshSize {5} = 3.902091;
//+
MeshSize {6} = 3.902091;
//+
MeshSize {7} = 3.902091;
//+
MeshSize {8} = 0.708737;
//+
Cylinder(2) = {8.613005, 3.053947, 0.000000, 0.000000, 0.000000, 1.000000, 0.960303, 2*Pi};
//+
c0 = 0.09603032346789421;
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
