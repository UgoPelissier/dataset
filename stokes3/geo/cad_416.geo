//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.283611, -4.369834, 0.000000, 32.836458, 9.940448, 1.000000};
//+
MeshSize {1} = 1.444128;
//+
MeshSize {2} = 1.444128;
//+
MeshSize {3} = 1.448328;
//+
MeshSize {4} = 1.448328;
//+
MeshSize {5} = 0.438778;
//+
MeshSize {6} = 0.438778;
//+
MeshSize {7} = 0.933069;
//+
MeshSize {8} = 0.933069;
//+
Cylinder(2) = {14.703849, 0.535948, 0.000000, 0.000000, 0.000000, 1.000000, 0.790589, 2*Pi};
//+
MeshSize {9} = 0.079059;
//+
MeshSize {10} = 0.079059;
//+
Cylinder(3) = {28.329770, -3.093617, 0.000000, 0.000000, 0.000000, 1.000000, 0.569609, 2*Pi};
//+
MeshSize {11} = 0.056961;
//+
MeshSize {12} = 0.056961;
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
Save "../geo_unrolled/cad_416.geo_unrolled";
