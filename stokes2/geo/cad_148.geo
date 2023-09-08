//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.349821, -3.272251, 0.000000, 36.634979, 8.479895, 0.000000};
//+
l = [3.7227040685082806, 1.5717086238403626, 1.4242010142561368, 3.7227040685082806];
//+
MeshSize {1} = 3.722704;
//+
MeshSize {2} = 1.571709;
//+
MeshSize {3} = 1.424201;
//+
MeshSize {4} = 3.722704;
//+
Disk(2) = {22.007481, 3.714213, 0.000000, 0.809582, 0.809582};
//+
c0 = 0.0809581887415961;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
