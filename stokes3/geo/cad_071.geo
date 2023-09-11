//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.185150, -4.439347, 0.000000, 34.656836, 9.311463, 1.000000};
//+
l = [0.29517440884956864, 0.29517440884956864, 0.29517440884956864, 3.515166870858982, 3.515166870858982, 3.515166870858982, 3.515166870858982, 0.7675402033796983, 0.7675402033796983, 0.7675402033796983];
//+
MeshSize {1} = 0.295174;
//+
MeshSize {2} = 0.295174;
//+
MeshSize {3} = 0.295174;
//+
MeshSize {4} = 3.515167;
//+
MeshSize {5} = 3.515167;
//+
MeshSize {6} = 3.515167;
//+
MeshSize {7} = 3.515167;
//+
MeshSize {8} = 0.767540;
//+
Cylinder(2) = {3.502529, -2.848213, 0.000000, 0.000000, 0.000000, 1.000000, 0.727483, 2*Pi};
//+
c0 = 0.07274831634825547;
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
