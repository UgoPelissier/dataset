//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.321777, -4.276095, 0.000000, 36.653207, 8.929494, 1.000000};
//+
l = [1.0157151889901828, 1.0157151889901828, 1.0157151889901828, 3.7243568954496014, 3.7243568954496014, 3.7243568954496014, 3.7243568954496014, 0.8054881044828748, 0.8054881044828748, 0.8054881044828748];
//+
MeshSize {1} = 1.015715;
//+
MeshSize {2} = 1.015715;
//+
MeshSize {3} = 1.015715;
//+
MeshSize {4} = 3.724357;
//+
MeshSize {5} = 3.724357;
//+
MeshSize {6} = 3.724357;
//+
MeshSize {7} = 3.724357;
//+
MeshSize {8} = 0.805488;
//+
Cylinder(2) = {8.635968, 2.460473, 0.000000, 0.000000, 0.000000, 1.000000, 0.543647, 2*Pi};
//+
c0 = 0.054364729909730194;
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
