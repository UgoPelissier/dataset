//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.172559, -4.051534, 0.000000, 34.205024, 8.598554, 0.000000};
//+
l = [0.9257509653539423, 3.4645374583658204, 3.4645374583658204, 1.0101354001016387];
//+
MeshSize {1} = 0.925751;
//+
MeshSize {2} = 3.464537;
//+
MeshSize {3} = 3.464537;
//+
MeshSize {4} = 1.010135;
//+
Disk(2) = {9.725197, -0.784451, 0.000000, 0.838367, 0.838367};
//+
c0 = 0.08383671468414196;
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
