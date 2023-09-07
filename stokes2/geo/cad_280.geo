//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.517749, -3.609905, 0.000000, 36.960687, 8.238855, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {22.259559, 0.233048, 0.000000, 1.477697, 1.477697};
//+
c0 = 0.14776969478433358;
//+
MeshSize {5} = c0;
//+
Disk(3) = {32.261963, 0.563376, 0.000000, 0.865412, 0.865412};
//+
c1 = 0.08654124628480987;
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
