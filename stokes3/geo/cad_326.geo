//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.041826, -3.405790, 0.000000, 33.761915, 8.282244, 1.000000};
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
Cylinder(2) = {20.671153, 2.008178, 0.000000, 0.000000, 0.000000, 1.000000, 1.093806, 2*Pi};
//+
MeshSize {9} = 0.109381;
//+
MeshSize {10} = 0.109381;
//+
Cylinder(3) = {17.599887, -0.400781, 0.000000, 0.000000, 0.000000, 1.000000, 1.327010, 2*Pi};
//+
MeshSize {11} = 0.132701;
//+
MeshSize {12} = 0.132701;
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
Save "../geo_unrolled/cad_326.geo_unrolled";
