//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.086738, -3.256509, 0.000000, 31.761074, 7.851530, 1.000000};
//+
l = [0.9538120459342911, 0.9538120459342911, 0.9538120459342911, 3.20888572477909, 3.20888572477909, 3.20888572477909, 3.20888572477909, 1.1389970419084923, 1.1389970419084923, 1.1389970419084923];
//+
MeshSize {1} = 0.953812;
//+
MeshSize {2} = 0.953812;
//+
MeshSize {3} = 0.953812;
//+
MeshSize {4} = 3.208886;
//+
MeshSize {5} = 3.208886;
//+
MeshSize {6} = 3.208886;
//+
MeshSize {7} = 3.208886;
//+
MeshSize {8} = 1.138997;
//+
Cylinder(2) = {10.306005, -1.978216, 0.000000, 0.000000, 0.000000, 1.000000, 0.760785, 2*Pi};
//+
c0 = 0.07607852770654439;
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
