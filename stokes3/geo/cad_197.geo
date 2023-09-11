//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.721400, -3.952758, 0.000000, 30.983721, 9.072563, 1.000000};
//+
l = [3.202799593608637, 3.202799593608637, 1.3317519464318917, 1.3317519464318917, 1.3317519464318917, 1.1577349425177161, 1.1577349425177161, 1.1577349425177161, 3.202799593608637, 3.202799593608637];
//+
MeshSize {1} = 3.202800;
//+
MeshSize {2} = 3.202800;
//+
MeshSize {3} = 1.331752;
//+
MeshSize {4} = 1.331752;
//+
MeshSize {5} = 1.331752;
//+
MeshSize {6} = 1.157735;
//+
MeshSize {7} = 1.157735;
//+
MeshSize {8} = 1.157735;
//+
Cylinder(2) = {19.648798, 3.095260, 0.000000, 0.000000, 0.000000, 1.000000, 0.647776, 2*Pi};
//+
c0 = 0.06477757083003319;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
