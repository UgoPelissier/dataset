//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.487581, -3.912091, 0.000000, 31.280662, 9.086247, 0.000000};
//+
l = [0.6984566324510729, 0.6984566324510729, 3.2091450810458904, 1.0567006210999463, 3.2091450810458904, 1.165702523443358, 0.4612467670099246, 0.4612467670099246];
//+
MeshSize {1} = 0.698457;
//+
MeshSize {2} = 0.698457;
//+
MeshSize {3} = 3.209145;
//+
MeshSize {4} = 1.056701;
//+
Disk(2) = {5.356309, 2.403165, 0.000000, 0.989577, 0.989577};
//+
c0 = 0.09895770906300165;
//+
MeshSize {5} = c0;
//+
Disk(3) = {20.124786, -0.877791, 0.000000, 1.465328, 1.465328};
//+
c1 = 0.14653278401300332;
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
