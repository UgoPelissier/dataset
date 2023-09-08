//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.186199, -3.723109, 0.000000, 37.721478, 8.919453, 0.000000};
//+
l = [3.816911197905961, 0.6686519744763697, 0.3504648706305683, 3.816911197905961];
//+
MeshSize {1} = 3.816911;
//+
MeshSize {2} = 0.668652;
//+
MeshSize {3} = 0.350465;
//+
MeshSize {4} = 3.816911;
//+
Disk(2) = {34.004807, 2.916570, 0.000000, 1.015281, 1.015281};
//+
c0 = 0.10152806589597958;
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
