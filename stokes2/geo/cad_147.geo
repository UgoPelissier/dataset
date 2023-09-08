//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.723734, -4.185035, 0.000000, 38.339693, 9.683199, 0.000000};
//+
l = [1.2629450053439077, 3.936232225413003, 3.936232225413003, 1.2523504703078554];
//+
MeshSize {1} = 1.262945;
//+
MeshSize {2} = 3.936232;
//+
MeshSize {3} = 3.936232;
//+
MeshSize {4} = 1.252350;
//+
Disk(2) = {13.022264, 0.801183, 0.000000, 0.641428, 0.641428};
//+
c0 = 0.06414283805843178;
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
