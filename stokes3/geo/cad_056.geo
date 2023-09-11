//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.379104, -4.489877, 0.000000, 32.889354, 9.403074, 1.000000};
//+
MeshSize {1} = 1.269377;
//+
MeshSize {2} = 1.269377;
//+
MeshSize {3} = 1.269377;
//+
MeshSize {4} = 3.359903;
//+
MeshSize {5} = 3.359903;
//+
MeshSize {6} = 3.359903;
//+
MeshSize {7} = 3.359903;
//+
MeshSize {8} = 1.116353;
//+
Cylinder(2) = {12.612945, 2.369667, 0.000000, 0.000000, 0.000000, 1.000000, 1.331924, 2*Pi};
//+
MeshSize {9} = 0.133192;
//+
MeshSize {10} = 0.133192;
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
