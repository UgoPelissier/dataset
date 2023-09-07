//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.298913, -3.938349, 0.000000, 38.308162, 9.279686, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {36.117385, 1.230331, 0.000000, 0.700889, 0.700889};
//+
c0 = 0.07008890823253444;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.097285, -1.943357, 0.000000, 0.845294, 0.845294};
//+
c1 = 0.08452935808985812;
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
