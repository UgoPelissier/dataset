//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.321777, -4.276095, 0.000000, 36.653207, 8.929494, 0.000000};
//+
l = [1.0157151889901828, 3.7243568954496014, 3.7243568954496014, 0.8054881044828748];
//+
MeshSize {1} = 1.015715;
//+
MeshSize {2} = 3.724357;
//+
MeshSize {3} = 3.724357;
//+
MeshSize {4} = 0.805488;
//+
Disk(2) = {8.635968, 2.460473, 0.000000, 0.543647, 0.543647};
//+
c0 = 0.054364729909730194;
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
