//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.567594, -3.861805, 0.000000, 29.958495, 7.893525, 1.000000};
//+
l = [3.078017215567958, 3.078017215567958, 1.2014566189929359, 1.2014566189929359, 1.2014566189929359, 1.1192884998926302, 1.1192884998926302, 1.1192884998926302, 3.078017215567958, 3.078017215567958];
//+
MeshSize {1} = 3.078017;
//+
MeshSize {2} = 3.078017;
//+
MeshSize {3} = 1.201457;
//+
MeshSize {4} = 1.201457;
//+
MeshSize {5} = 1.201457;
//+
MeshSize {6} = 1.119288;
//+
MeshSize {7} = 1.119288;
//+
MeshSize {8} = 1.119288;
//+
Cylinder(2) = {18.860183, 1.373226, 0.000000, 0.000000, 0.000000, 1.000000, 0.772103, 2*Pi};
//+
c0 = 0.0772102843546219;
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
