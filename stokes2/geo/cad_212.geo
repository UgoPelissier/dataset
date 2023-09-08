//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.086738, -3.256509, 0.000000, 31.761074, 7.851530, 0.000000};
//+
l = [0.9538120459342911, 3.20888572477909, 3.20888572477909, 1.1389970419084923];
//+
MeshSize {1} = 0.953812;
//+
MeshSize {2} = 3.208886;
//+
MeshSize {3} = 3.208886;
//+
MeshSize {4} = 1.138997;
//+
Disk(2) = {10.306005, -1.978216, 0.000000, 0.760785, 0.760785};
//+
c0 = 0.07607852770654439;
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
