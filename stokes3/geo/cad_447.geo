//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.615993, -4.134026, 0.000000, 31.140298, 8.326287, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {10.731621, 1.436059, 0.000000, 0.000000, 0.000000, 1.000000, 1.416163, 2*Pi};
//+
c0 = 0.14161630531735753;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {25.317842, 1.212742, 0.000000, 0.000000, 0.000000, 1.000000, 0.981496, 2*Pi};
//+
c1 = 0.09814955231203608;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
