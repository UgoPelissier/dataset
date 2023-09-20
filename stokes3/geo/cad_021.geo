//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.308258, -3.926897, 0.000000, 37.652965, 9.651756, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {3.902172, 2.703614, 0.000000, 0.000000, 0.000000, 1.000000, 1.384135, 2*Pi};
//+
MeshSize {9} = 0.138413;
//+
MeshSize {10} = 0.138413;
//+
Cylinder(3) = {15.426583, 1.164596, 0.000000, 0.000000, 0.000000, 1.000000, 0.654553, 2*Pi};
//+
MeshSize {11} = 0.065455;
//+
MeshSize {12} = 0.065455;
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
Save "../geo_unrolled/cad_021.geo_unrolled";
