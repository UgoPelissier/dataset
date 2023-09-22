//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.283611, -4.369834, 0.000000, 32.836458, 9.940448, 1.000000};
//+
MeshSize {1} = 2.485726;
//+
MeshSize {2} = 2.485726;
//+
MeshSize {3} = 2.507475;
//+
MeshSize {4} = 2.507475;
//+
MeshSize {5} = 0.411582;
//+
MeshSize {6} = 0.411582;
//+
MeshSize {7} = 0.875237;
//+
MeshSize {8} = 0.875237;
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
