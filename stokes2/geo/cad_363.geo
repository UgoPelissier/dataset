//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.220788, -3.141949, 0.000000, 31.722474, 7.953395, 0.000000};
//+
l = [3.218984498036621, 3.218984498036621, 0.7382421960963613, 0.7382421960963613, 0.535631364344796, 0.535631364344796, 3.218984498036621, 3.218984498036621];
//+
MeshSize {1} = 3.218984;
//+
MeshSize {2} = 3.218984;
//+
MeshSize {3} = 0.738242;
//+
MeshSize {4} = 0.738242;
//+
Disk(2) = {25.543751, 2.801592, 0.000000, 1.351388, 1.351388};
//+
c0 = 0.13513877224254742;
//+
MeshSize {5} = c0;
//+
Disk(3) = {17.558081, -1.665022, 0.000000, 0.567363, 0.567363};
//+
c1 = 0.05673627574048014;
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
