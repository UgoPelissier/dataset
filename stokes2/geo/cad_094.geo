//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.409979, -3.682082, 0.000000, 31.133634, 8.673727, 0.000000};
//+
l = [3.1840349443887552, 1.1583546205279216, 0.986224222329859, 3.1840349443887552];
//+
MeshSize {1} = 3.184035;
//+
MeshSize {2} = 1.158355;
//+
MeshSize {3} = 0.986224;
//+
MeshSize {4} = 3.184035;
//+
Disk(2) = {20.498195, 3.051116, 0.000000, 1.352341, 1.352341};
//+
c0 = 0.1352341336565893;
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
