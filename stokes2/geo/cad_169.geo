//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.519276, -3.047511, 0.000000, 36.751537, 7.697318, 0.000000};
//+
l = [3.7468996437836184, 1.4769279152533832, 1.3929278044545979, 3.7468996437836184];
//+
MeshSize {1} = 3.746900;
//+
MeshSize {2} = 1.476928;
//+
MeshSize {3} = 1.392928;
//+
MeshSize {4} = 3.746900;
//+
Disk(2) = {22.453924, 2.481163, 0.000000, 1.045474, 1.045474};
//+
c0 = 0.1045474397344637;
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
