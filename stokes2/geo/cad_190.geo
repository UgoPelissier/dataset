//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.847172, -4.228457, 0.000000, 37.977385, 9.318770, 0.000000};
//+
l = [3.9103147182426725, 0.8739463999002952, 1.0245977206136965, 3.9103147182426725];
//+
MeshSize {1} = 3.910315;
//+
MeshSize {2} = 0.873946;
//+
MeshSize {3} = 1.024598;
//+
MeshSize {4} = 3.910315;
//+
Disk(2) = {29.656401, -1.249299, 0.000000, 0.900582, 0.900582};
//+
c0 = 0.09005816210147566;
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
