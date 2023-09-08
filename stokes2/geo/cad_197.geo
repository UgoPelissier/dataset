//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.721400, -3.952758, 0.000000, 30.983721, 9.072563, 0.000000};
//+
l = [3.202799593608637, 1.3317519464318917, 1.1577349425177161, 3.202799593608637];
//+
MeshSize {1} = 3.202800;
//+
MeshSize {2} = 1.331752;
//+
MeshSize {3} = 1.157735;
//+
MeshSize {4} = 3.202800;
//+
Disk(2) = {19.648798, 3.095260, 0.000000, 0.647776, 0.647776};
//+
c0 = 0.06477757083003319;
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
