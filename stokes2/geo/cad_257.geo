//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.633336, -4.402024, 0.000000, 35.953294, 9.288091, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {17.533582, -0.921331, 0.000000, 1.006613, 1.006613};
//+
c0 = 0.10066126430295091;
//+
MeshSize {5} = c0;
//+
Disk(3) = {33.674048, 1.780609, 0.000000, 1.043645, 1.043645};
//+
c1 = 0.10436452033874777;
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
