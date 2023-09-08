//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.179442, -4.078741, 0.000000, 35.161909, 8.185778, 0.000000};
//+
l = [3.5577560689047965, 0.552549862623524, 0.47305733959212354, 3.5577560689047965];
//+
MeshSize {1} = 3.557756;
//+
MeshSize {2} = 0.552550;
//+
MeshSize {3} = 0.473057;
//+
MeshSize {4} = 3.557756;
//+
Disk(2) = {30.843094, 0.606273, 0.000000, 0.969397, 0.969397};
//+
c0 = 0.09693969449305102;
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
