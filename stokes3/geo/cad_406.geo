//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.788562, -3.541701, 0.000000, 37.266692, 8.596797, 1.000000};
//+
MeshSize {1} = 0.748929;
//+
MeshSize {2} = 0.748929;
//+
MeshSize {3} = 3.829724;
//+
MeshSize {4} = 3.829724;
//+
MeshSize {5} = 0.722386;
//+
MeshSize {6} = 0.722386;
//+
MeshSize {7} = 3.829724;
//+
MeshSize {8} = 3.829724;
//+
Cylinder(2) = {7.343343, 1.626944, 0.000000, 0.000000, 0.000000, 1.000000, 0.858167, 2*Pi};
//+
MeshSize {9} = 0.085817;
//+
MeshSize {10} = 0.085817;
//+
Cylinder(3) = {5.127267, 3.427225, 0.000000, 0.000000, 0.000000, 1.000000, 0.985302, 2*Pi};
//+
MeshSize {11} = 0.098530;
//+
MeshSize {12} = 0.098530;
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
