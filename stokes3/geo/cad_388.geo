//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.148970, -4.401529, 0.000000, 29.901806, 9.950460, 1.000000};
//+
MeshSize {1} = 0.814446;
//+
MeshSize {2} = 0.814446;
//+
MeshSize {3} = 0.813495;
//+
MeshSize {4} = 0.813495;
//+
MeshSize {5} = 0.877274;
//+
MeshSize {6} = 0.877274;
//+
MeshSize {7} = 0.555703;
//+
MeshSize {8} = 0.555703;
//+
Cylinder(2) = {23.981045, 3.196996, 0.000000, 0.000000, 0.000000, 1.000000, 0.952441, 2*Pi};
//+
MeshSize {9} = 0.095244;
//+
MeshSize {10} = 0.095244;
//+
Cylinder(3) = {7.227557, 0.581972, 0.000000, 0.000000, 0.000000, 1.000000, 0.512423, 2*Pi};
//+
MeshSize {11} = 0.051242;
//+
MeshSize {12} = 0.051242;
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
Save "../geo_unrolled/cad_388.geo_unrolled";
