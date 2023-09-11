//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.101290, -4.729940, 0.000000, 32.210312, 9.971665, 1.000000};
//+
MeshSize {1} = 0.982566;
//+
MeshSize {2} = 0.982566;
//+
MeshSize {3} = 0.578218;
//+
MeshSize {4} = 0.578218;
//+
MeshSize {5} = 0.982566;
//+
MeshSize {6} = 0.982566;
//+
MeshSize {7} = 3.269401;
//+
MeshSize {8} = 3.269401;
//+
Cylinder(2) = {9.564951, -0.356214, 0.000000, 0.000000, 0.000000, 1.000000, 0.599809, 2*Pi};
//+
MeshSize {9} = 0.059981;
//+
MeshSize {10} = 0.059981;
//+
Cylinder(3) = {25.900855, -1.867622, 0.000000, 0.000000, 0.000000, 1.000000, 1.238540, 2*Pi};
//+
MeshSize {11} = 0.123854;
//+
MeshSize {12} = 0.123854;
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
//+
Save "../geo_unrolled/cad_334.geo_unrolled";
