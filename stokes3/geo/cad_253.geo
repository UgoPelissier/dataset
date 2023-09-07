//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.484231, -3.981316, 0.000000, 32.032766, 8.116475, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {20.324219, 0.761377, 0.000000, 0.000000, 0.000000, 1.000000, 0.695548, 2*Pi};
//+
c0 = 0.06955482248802605;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {3.478420, -1.585489, 0.000000, 0.000000, 0.000000, 1.000000, 1.448823, 2*Pi};
//+
c1 = 0.14488234623945653;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
