//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.327301, -3.447748, 0.000000, 29.752391, 8.001678, 0.000000};
//+
l = [3.0344597000875546, 1.326119337064387, 1.2131660992656896, 1.2131660992656896, 1.335623294085403, 1.335623294085403, 3.0344597000875546, 1.3159457635223588];
//+
MeshSize {1} = 3.034460;
//+
MeshSize {2} = 1.326119;
//+
MeshSize {3} = 1.213166;
//+
MeshSize {4} = 1.213166;
//+
Disk(2) = {16.959133, -1.569055, 0.000000, 1.122718, 1.122718};
//+
c0 = 0.11227175238921046;
//+
MeshSize {5} = c0;
//+
Disk(3) = {13.954772, 0.733681, 0.000000, 0.993361, 0.993361};
//+
c1 = 0.09933606758548849;
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
