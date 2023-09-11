//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.519276, -3.047511, 0.000000, 36.751537, 7.697318, 1.000000};
//+
l = [3.7468996437836184, 3.7468996437836184, 1.4769279152533832, 1.4769279152533832, 1.4769279152533832, 1.3929278044545979, 1.3929278044545979, 1.3929278044545979, 3.7468996437836184, 3.7468996437836184];
//+
MeshSize {1} = 3.746900;
//+
MeshSize {2} = 3.746900;
//+
MeshSize {3} = 1.476928;
//+
MeshSize {4} = 1.476928;
//+
MeshSize {5} = 1.476928;
//+
MeshSize {6} = 1.392928;
//+
MeshSize {7} = 1.392928;
//+
MeshSize {8} = 1.392928;
//+
Cylinder(2) = {22.453924, 2.481163, 0.000000, 0.000000, 0.000000, 1.000000, 1.045474, 2*Pi};
//+
c0 = 0.1045474397344637;
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
