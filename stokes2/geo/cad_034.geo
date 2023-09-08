//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.551680, -3.416368, 0.000000, 29.545017, 7.688110, 0.000000};
//+
l = [3.0341191927351345, 0.5769862972124472, 0.5517340988985223, 3.0341191927351345];
//+
MeshSize {1} = 3.034119;
//+
MeshSize {2} = 0.576986;
//+
MeshSize {3} = 0.551734;
//+
MeshSize {4} = 3.034119;
//+
Disk(2) = {25.118553, 0.634343, 0.000000, 0.648094, 0.648094};
//+
c0 = 0.06480937855674827;
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
