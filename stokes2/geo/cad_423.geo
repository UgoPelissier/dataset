//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.693795, -3.667157, 0.000000, 33.806820, 7.556870, 0.000000};
//+
l = [0.691921429523265, 0.691921429523265, 3.4706902141454616, 1.556756960564, 3.4706902141454616, 1.642870373688474, 0.6742774570843264, 0.6742774570843264];
//+
MeshSize {1} = 0.691921;
//+
MeshSize {2} = 0.691921;
//+
MeshSize {3} = 3.470690;
//+
MeshSize {4} = 1.556757;
//+
Disk(2) = {7.210958, 0.287202, 0.000000, 0.703801, 0.703801};
//+
c0 = 0.07038013528766052;
//+
MeshSize {5} = c0;
//+
Disk(3) = {18.052995, -1.823790, 0.000000, 0.983026, 0.983026};
//+
c1 = 0.09830263303446918;
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
