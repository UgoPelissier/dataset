//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.572258, -3.594307, 0.000000, 37.998854, 9.118450, 0.000000};
//+
l = [3.8839634429189553, 3.8839634429189553, 1.161096561136776, 1.161096561136776, 1.3676751958572024, 1.1815601767913224, 3.8839634429189553, 3.8839634429189553];
//+
MeshSize {1} = 3.883963;
//+
MeshSize {2} = 3.883963;
//+
MeshSize {3} = 1.161097;
//+
MeshSize {4} = 1.161097;
//+
Disk(2) = {26.139459, -2.105600, 0.000000, 0.909507, 0.909507};
//+
c0 = 0.09095071964955422;
//+
MeshSize {5} = c0;
//+
Disk(3) = {26.120209, 2.957212, 0.000000, 0.897153, 0.897153};
//+
c1 = 0.08971525399721203;
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
