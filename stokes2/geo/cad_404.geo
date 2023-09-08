//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.472826, -3.472387, 0.000000, 32.648268, 8.307658, 0.000000};
//+
l = [0.6324113377677905, 0.6324113377677905, 3.3380550328007055, 1.2998758458115984, 3.3380550328007055, 1.402948054766128, 0.3745606789852295, 0.3745606789852295];
//+
MeshSize {1} = 0.632411;
//+
MeshSize {2} = 0.632411;
//+
MeshSize {3} = 3.338055;
//+
MeshSize {4} = 1.299876;
//+
Disk(2) = {3.962925, 2.402108, 0.000000, 0.508930, 0.508930};
//+
c0 = 0.050892985588934216;
//+
MeshSize {5} = c0;
//+
Disk(3) = {19.747203, -1.068376, 0.000000, 0.589480, 0.589480};
//+
c1 = 0.05894799027496744;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
