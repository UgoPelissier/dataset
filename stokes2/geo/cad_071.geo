//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.185150, -4.439347, 0.000000, 34.656836, 9.311463, 0.000000};
//+
l = [0.29517440884956864, 3.515166870858982, 3.515166870858982, 0.7675402033796983];
//+
MeshSize {1} = 0.295174;
//+
MeshSize {2} = 3.515167;
//+
MeshSize {3} = 3.515167;
//+
MeshSize {4} = 0.767540;
//+
Disk(2) = {3.502529, -2.848213, 0.000000, 0.727483, 0.727483};
//+
c0 = 0.07274831634825547;
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
