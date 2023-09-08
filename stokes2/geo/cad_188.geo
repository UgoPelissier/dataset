//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.248270, -3.293987, 0.000000, 31.348726, 8.318590, 0.000000};
//+
l = [1.4868832818599749, 1.5218499605851548, 1.5595151501754774, 1.5253590342830132];
//+
MeshSize {1} = 1.486883;
//+
MeshSize {2} = 1.521850;
//+
MeshSize {3} = 1.559515;
//+
MeshSize {4} = 1.525359;
//+
Disk(2) = {15.743695, 0.122490, 0.000000, 0.998760, 0.998760};
//+
c0 = 0.09987597083976542;
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
