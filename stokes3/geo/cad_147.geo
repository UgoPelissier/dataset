//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.723734, -4.185035, 0.000000, 38.339693, 9.683199, 1.000000};
//+
l = [1.2629450053439077, 1.2629450053439077, 1.2629450053439077, 3.936232225413003, 3.936232225413003, 3.936232225413003, 3.936232225413003, 1.2523504703078554, 1.2523504703078554, 1.2523504703078554];
//+
MeshSize {1} = 1.262945;
//+
MeshSize {2} = 1.262945;
//+
MeshSize {3} = 1.262945;
//+
MeshSize {4} = 3.936232;
//+
MeshSize {5} = 3.936232;
//+
MeshSize {6} = 3.936232;
//+
MeshSize {7} = 3.936232;
//+
MeshSize {8} = 1.252350;
//+
Cylinder(2) = {13.022264, 0.801183, 0.000000, 0.000000, 0.000000, 1.000000, 0.641428, 2*Pi};
//+
c0 = 0.06414283805843178;
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
