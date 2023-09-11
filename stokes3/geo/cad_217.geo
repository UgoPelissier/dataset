//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.547649, -3.431828, 0.000000, 35.179367, 7.874631, 1.000000};
//+
l = [1.112188171936749, 1.112188171936749, 1.112188171936749, 3.594331896843056, 3.594331896843056, 3.594331896843056, 3.594331896843056, 1.1351291040677323, 1.1351291040677323, 1.1351291040677323];
//+
MeshSize {1} = 1.112188;
//+
MeshSize {2} = 1.112188;
//+
MeshSize {3} = 1.112188;
//+
MeshSize {4} = 3.594332;
//+
MeshSize {5} = 3.594332;
//+
MeshSize {6} = 3.594332;
//+
MeshSize {7} = 3.594332;
//+
MeshSize {8} = 1.135129;
//+
Cylinder(2) = {11.722664, 0.160182, 0.000000, 0.000000, 0.000000, 1.000000, 0.616240, 2*Pi};
//+
c0 = 0.06162400221846642;
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
