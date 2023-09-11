//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.790741, -4.087456, 0.000000, 34.434985, 8.626286, 1.000000};
//+
MeshSize {1} = 1.010033;
//+
MeshSize {2} = 1.010033;
//+
MeshSize {3} = 0.945185;
//+
MeshSize {4} = 0.945185;
//+
MeshSize {5} = 3.548880;
//+
MeshSize {6} = 3.548880;
//+
MeshSize {7} = 3.548880;
//+
MeshSize {8} = 3.548880;
//+
Cylinder(2) = {10.757241, 1.044016, 0.000000, 0.000000, 0.000000, 1.000000, 1.109631, 2*Pi};
//+
MeshSize {9} = 0.110963;
//+
MeshSize {10} = 0.110963;
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
Save "../geo_unrolled/cad_075.geo_unrolled";
