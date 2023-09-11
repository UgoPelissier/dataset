//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.349821, -3.272251, 0.000000, 36.634979, 8.479895, 1.000000};
//+
l = [3.7227040685082806, 3.7227040685082806, 1.5717086238403626, 1.5717086238403626, 1.5717086238403626, 1.4242010142561368, 1.4242010142561368, 1.4242010142561368, 3.7227040685082806, 3.7227040685082806];
//+
MeshSize {1} = 3.722704;
//+
MeshSize {2} = 3.722704;
//+
MeshSize {3} = 1.571709;
//+
MeshSize {4} = 1.571709;
//+
MeshSize {5} = 1.571709;
//+
MeshSize {6} = 1.424201;
//+
MeshSize {7} = 1.424201;
//+
MeshSize {8} = 1.424201;
//+
Cylinder(2) = {22.007481, 3.714213, 0.000000, 0.000000, 0.000000, 1.000000, 0.809582, 2*Pi};
//+
c0 = 0.0809581887415961;
//+
MeshSize {9, 10} = c0;
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
