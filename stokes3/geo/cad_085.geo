//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.438116, -4.268183, 0.000000, 30.776145, 9.932867, 1.000000};
//+
l = [3.16068907249039, 3.16068907249039, 1.1665267887527015, 1.1665267887527015, 1.1665267887527015, 1.407886341976764, 1.407886341976764, 1.407886341976764, 3.16068907249039, 3.16068907249039];
//+
MeshSize {1} = 3.160689;
//+
MeshSize {2} = 3.160689;
//+
MeshSize {3} = 1.166527;
//+
MeshSize {4} = 1.166527;
//+
MeshSize {5} = 1.166527;
//+
MeshSize {6} = 1.407886;
//+
MeshSize {7} = 1.407886;
//+
MeshSize {8} = 1.407886;
//+
Cylinder(2) = {19.005479, -2.589524, 0.000000, 0.000000, 0.000000, 1.000000, 0.658378, 2*Pi};
//+
c0 = 0.06583781638052325;
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
