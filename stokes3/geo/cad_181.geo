//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.346023, -3.866513, 0.000000, 38.603236, 9.614834, 1.000000};
//+
MeshSize {1} = 0.968776;
//+
MeshSize {2} = 0.968776;
//+
MeshSize {3} = 0.968776;
//+
MeshSize {4} = 3.924482;
//+
MeshSize {5} = 3.924482;
//+
MeshSize {6} = 3.924482;
//+
MeshSize {7} = 3.924482;
//+
MeshSize {8} = 0.936262;
//+
Cylinder(2) = {9.760891, 1.298552, 0.000000, 0.000000, 0.000000, 1.000000, 1.050841, 2*Pi};
//+
MeshSize {9} = 0.105084;
//+
MeshSize {10} = 0.105084;
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
