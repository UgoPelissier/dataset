//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.349821, -3.272251, 0.000000, 36.634979, 8.479895, 1.000000};
//+
MeshSize {1} = 3.722704;
//+
MeshSize {2} = 3.722704;
//+
MeshSize {3} = 3.722704;
//+
MeshSize {4} = 3.722704;
//+
MeshSize {5} = 1.571709;
//+
MeshSize {6} = 1.571709;
//+
MeshSize {7} = 1.424201;
//+
MeshSize {8} = 1.424201;
//+
Cylinder(2) = {22.007481, 3.714213, 0.000000, 0.000000, 0.000000, 1.000000, 0.809582, 2*Pi};
//+
MeshSize {9} = 0.080958;
//+
MeshSize {10} = 0.080958;
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
Save "../geo_unrolled/cad_148.geo_unrolled";
