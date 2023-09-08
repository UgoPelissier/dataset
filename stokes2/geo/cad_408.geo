//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.000720, -3.343892, 0.000000, 33.789716, 7.963836, 0.000000};
//+
l = [0.838856417042625, 0.838856417042625, 3.4024244509396064, 1.47459344044487, 3.4024244509396064, 1.5502471487085119, 0.7401582468098786, 0.7401582468098786];
//+
MeshSize {1} = 0.838856;
//+
MeshSize {2} = 0.838856;
//+
MeshSize {3} = 3.402424;
//+
MeshSize {4} = 1.474593;
//+
Disk(2) = {8.068702, 1.760036, 0.000000, 1.158289, 1.158289};
//+
c0 = 0.115828941737982;
//+
MeshSize {5} = c0;
//+
Disk(3) = {18.211576, -0.896004, 0.000000, 1.024070, 1.024070};
//+
c1 = 0.10240697688104523;
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
