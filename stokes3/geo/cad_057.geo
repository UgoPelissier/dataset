//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.009397, -3.792381, 0.000000, 39.002697, 9.194027, 1.000000};
//+
MeshSize {1} = 0.611662;
//+
MeshSize {2} = 0.611662;
//+
MeshSize {3} = 0.770539;
//+
MeshSize {4} = 0.770539;
//+
MeshSize {5} = 1.594522;
//+
MeshSize {6} = 1.594522;
//+
MeshSize {7} = 1.568555;
//+
MeshSize {8} = 1.568555;
//+
Cylinder(2) = {6.162960, -0.535738, 0.000000, 0.000000, 0.000000, 1.000000, 0.845566, 2*Pi};
//+
MeshSize {9} = 0.084557;
//+
MeshSize {10} = 0.084557;
//+
Cylinder(3) = {22.922403, 1.277406, 0.000000, 0.000000, 0.000000, 1.000000, 0.924309, 2*Pi};
//+
MeshSize {11} = 0.092431;
//+
MeshSize {12} = 0.092431;
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
Save "../geo_unrolled/cad_057.geo_unrolled";
