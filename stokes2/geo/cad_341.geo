//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.412339, -3.306488, 0.000000, 29.589359, 7.727239, 0.000000};
//+
l = [3.0249452677616047, 3.0249452677616047, 1.1799732394627909, 0.21444591199539184, 1.157523967654879, 0.5121377824923361, 3.0249452677616047, 3.0249452677616047];
//+
MeshSize {1} = 3.024945;
//+
MeshSize {2} = 3.024945;
//+
MeshSize {3} = 1.179973;
//+
MeshSize {4} = 0.214446;
//+
Disk(2) = {18.127124, 0.920053, 0.000000, 0.804598, 0.804598};
//+
c0 = 0.08045979581036486;
//+
MeshSize {5} = c0;
//+
Disk(3) = {28.512267, -1.055985, 0.000000, 0.554275, 0.554275};
//+
c1 = 0.055427521330556784;
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
