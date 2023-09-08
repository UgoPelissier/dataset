//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.538618, -3.582343, 0.000000, 38.324740, 7.691156, 0.000000};
//+
l = [3.90531572336728, 3.90531572336728, 0.837791361196317, 0.837791361196317, 0.9413559976747291, 0.8361826570215607, 3.90531572336728, 3.90531572336728];
//+
MeshSize {1} = 3.905316;
//+
MeshSize {2} = 3.905316;
//+
MeshSize {3} = 0.837791;
//+
MeshSize {4} = 0.837791;
//+
Disk(2) = {30.126768, -1.032010, 0.000000, 0.723307, 0.723307};
//+
c0 = 0.0723306647624355;
//+
MeshSize {5} = c0;
//+
Disk(3) = {30.008142, 1.793784, 0.000000, 0.790999, 0.790999};
//+
c1 = 0.0790999160214374;
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
