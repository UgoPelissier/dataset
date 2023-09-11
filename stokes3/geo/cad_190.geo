//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.847172, -4.228457, 0.000000, 37.977385, 9.318770, 1.000000};
//+
MeshSize {1} = 3.910315;
//+
MeshSize {2} = 3.910315;
//+
MeshSize {3} = 3.910315;
//+
MeshSize {4} = 3.910315;
//+
MeshSize {5} = 0.873946;
//+
MeshSize {6} = 0.873946;
//+
MeshSize {7} = 1.024598;
//+
MeshSize {8} = 1.024598;
//+
Cylinder(2) = {29.656401, -1.249299, 0.000000, 0.000000, 0.000000, 1.000000, 0.900582, 2*Pi};
//+
MeshSize {9} = 0.090058;
//+
MeshSize {10} = 0.090058;
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
//+
Save "../geo_unrolled/cad_190.geo_unrolled";
