//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.179816, -4.550828, 0.000000, 32.010386, 9.739412, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {17.042532, 2.598886, 0.000000, 1.499606, 1.499606};
//+
c0 = 0.1499605746811346;
//+
MeshSize {5} = c0;
//+
Disk(3) = {8.579558, 3.080431, 0.000000, 1.417259, 1.417259};
//+
c1 = 0.14172594825704407;
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
