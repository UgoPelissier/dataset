//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.567594, -3.861805, 0.000000, 29.958495, 7.893525, 0.000000};
//+
l = [3.078017215567958, 1.2014566189929359, 1.1192884998926302, 3.078017215567958];
//+
MeshSize {1} = 3.078017;
//+
MeshSize {2} = 1.201457;
//+
MeshSize {3} = 1.119288;
//+
MeshSize {4} = 3.078017;
//+
Disk(2) = {18.860183, 1.373226, 0.000000, 0.772103, 0.772103};
//+
c0 = 0.0772102843546219;
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
