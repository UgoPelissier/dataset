//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.438116, -4.268183, 0.000000, 30.776145, 9.932867, 0.000000};
//+
l = [3.16068907249039, 1.1665267887527015, 1.407886341976764, 3.16068907249039];
//+
MeshSize {1} = 3.160689;
//+
MeshSize {2} = 1.166527;
//+
MeshSize {3} = 1.407886;
//+
MeshSize {4} = 3.160689;
//+
Disk(2) = {19.005479, -2.589524, 0.000000, 0.658378, 0.658378};
//+
c0 = 0.06583781638052325;
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
