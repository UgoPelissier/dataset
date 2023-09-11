//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179442, -4.078741, 0.000000, 35.161909, 8.185778, 1.000000};
//+
l = [3.5577560689047965, 3.5577560689047965, 0.552549862623524, 0.552549862623524, 0.552549862623524, 0.47305733959212354, 0.47305733959212354, 0.47305733959212354, 3.5577560689047965, 3.5577560689047965];
//+
MeshSize {1} = 3.557756;
//+
MeshSize {2} = 3.557756;
//+
MeshSize {3} = 0.552550;
//+
MeshSize {4} = 0.552550;
//+
MeshSize {5} = 0.552550;
//+
MeshSize {6} = 0.473057;
//+
MeshSize {7} = 0.473057;
//+
MeshSize {8} = 0.473057;
//+
Cylinder(2) = {30.843094, 0.606273, 0.000000, 0.000000, 0.000000, 1.000000, 0.969397, 2*Pi};
//+
c0 = 0.09693969449305102;
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
