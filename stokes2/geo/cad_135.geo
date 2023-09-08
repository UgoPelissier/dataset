//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.417694, -4.040787, 0.000000, 29.790872, 8.311920, 0.000000};
//+
l = [3.0493104801025193, 0.6494092837353103, 0.5511999002603496, 3.0493104801025193];
//+
MeshSize {1} = 3.049310;
//+
MeshSize {2} = 0.649409;
//+
MeshSize {3} = 0.551200;
//+
MeshSize {4} = 3.049310;
//+
Disk(2) = {24.206793, 0.981848, 0.000000, 1.332026, 1.332026};
//+
c0 = 0.13320259130717071;
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
