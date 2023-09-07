//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.053611, -3.561629, 0.000000, 30.042223, 7.841337, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {14.896531, 1.448269, 0.000000, 0.915630, 0.915630};
//+
c0 = 0.0915630435274112;
//+
MeshSize {5} = c0;
//+
Disk(3) = {25.277245, -0.088611, 0.000000, 0.582671, 0.582671};
//+
c1 = 0.058267062578646694;
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
