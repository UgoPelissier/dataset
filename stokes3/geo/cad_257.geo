//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.633336, -4.402024, 0.000000, 35.953294, 9.288091, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {17.533582, -0.921331, 0.000000, 0.000000, 0.000000, 1.000000, 1.006613, 2*Pi};
//+
c0 = 0.10066126430295091;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {33.674048, 1.780609, 0.000000, 0.000000, 0.000000, 1.000000, 1.043645, 2*Pi};
//+
c1 = 0.10436452033874777;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
