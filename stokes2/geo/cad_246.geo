//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.784376, -3.303346, 0.000000, 37.795227, 7.738405, 0.000000};
//+
l = [3.877314153306931, 0.4897573060675477, 0.500256583020197, 3.877314153306931];
//+
MeshSize {1} = 3.877314;
//+
MeshSize {2} = 0.489757;
//+
MeshSize {3} = 0.500257;
//+
MeshSize {4} = 3.877314;
//+
Disk(2) = {34.695087, 0.491465, 0.000000, 0.532902, 0.532902};
//+
c0 = 0.05329017801534719;
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
