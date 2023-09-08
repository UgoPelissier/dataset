//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.258821, -3.017843, 0.000000, 29.959181, 7.661180, 0.000000};
//+
l = [3.045982689598241, 3.045982689598241, 0.3290462390695332, 0.3290462390695332, 0.5240978694611163, 0.27352687021871375, 3.045982689598241, 3.045982689598241];
//+
MeshSize {1} = 3.045983;
//+
MeshSize {2} = 3.045983;
//+
MeshSize {3} = 0.329046;
//+
MeshSize {4} = 0.329046;
//+
Disk(2) = {27.271628, -0.433383, 0.000000, 0.628792, 0.628792};
//+
c0 = 0.06287915489970046;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.349648, 2.523257, 0.000000, 0.831550, 0.831550};
//+
c1 = 0.08315498912522767;
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
