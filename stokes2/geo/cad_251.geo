//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.132507, -4.256033, 0.000000, 34.355930, 8.886850, 0.000000};
//+
l = [0.5155394422679734, 0.5155394422679734, 3.477349991862299, 3.477349991862299, 3.477349991862299, 3.477349991862299, 0.40338322484506073, 0.40338322484506073];
//+
MeshSize {1} = 0.515539;
//+
MeshSize {2} = 0.515539;
//+
MeshSize {3} = 3.477350;
//+
MeshSize {4} = 3.477350;
//+
Disk(2) = {3.209641, 0.871301, 0.000000, 0.824430, 0.824430};
//+
c0 = 0.08244303305724127;
//+
MeshSize {5} = c0;
//+
Disk(3) = {13.286254, -1.849821, 0.000000, 0.887800, 0.887800};
//+
c1 = 0.08877995593783938;
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
