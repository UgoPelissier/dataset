//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.484231, -3.981316, 0.000000, 32.032766, 8.116475, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {20.324219, 0.761377, 0.000000, 0.695548, 0.695548};
//+
c0 = 0.06955482248802605;
//+
MeshSize {5} = c0;
//+
Disk(3) = {3.478420, -1.585489, 0.000000, 1.448823, 1.448823};
//+
c1 = 0.14488234623945653;
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
