//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.615993, -4.134026, 0.000000, 31.140298, 8.326287, 0.000000};
//+
l = [1.0131640940442943, 1.0131640940442943, 3.2028015466805644, 0.738758772267187, 3.2028015466805644, 0.6112949787112304, 0.9068233519841254, 0.9068233519841254];
//+
MeshSize {1} = 1.013164;
//+
MeshSize {2} = 1.013164;
//+
MeshSize {3} = 3.202802;
//+
MeshSize {4} = 0.738759;
//+
Disk(2) = {10.731621, 1.436059, 0.000000, 1.416163, 1.416163};
//+
c0 = 0.14161630531735753;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.317842, 1.212742, 0.000000, 0.981496, 0.981496};
//+
c1 = 0.09814955231203608;
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
