//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.248270, -3.293987, 0.000000, 31.348726, 8.318590, 1.000000};
//+
l = [1.4868832818599749, 1.4868832818599749, 1.4868832818599749, 1.5218499605851548, 1.5218499605851548, 1.5218499605851548, 1.5595151501754774, 1.5595151501754774, 1.5595151501754774, 1.5253590342830132, 1.5253590342830132, 1.5253590342830132];
//+
MeshSize {1} = 1.486883;
//+
MeshSize {2} = 1.486883;
//+
MeshSize {3} = 1.486883;
//+
MeshSize {4} = 1.521850;
//+
MeshSize {5} = 1.521850;
//+
MeshSize {6} = 1.521850;
//+
MeshSize {7} = 1.559515;
//+
MeshSize {8} = 1.559515;
//+
Cylinder(2) = {15.743695, 0.122490, 0.000000, 0.000000, 0.000000, 1.000000, 0.998760, 2*Pi};
//+
c0 = 0.09987597083976542;
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
