//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.941586, -3.477076, 0.000000, 36.916460, 8.296836, 1.000000};
//+
MeshSize {1} = 3.808466;
//+
MeshSize {2} = 3.808466;
//+
MeshSize {3} = 3.808466;
//+
MeshSize {4} = 3.808466;
//+
MeshSize {5} = 0.850209;
//+
MeshSize {6} = 0.850209;
//+
MeshSize {7} = 0.922594;
//+
MeshSize {8} = 0.922594;
//+
Cylinder(2) = {28.560719, -0.219710, 0.000000, 0.000000, 0.000000, 1.000000, 1.349341, 2*Pi};
//+
MeshSize {9} = 0.134934;
//+
MeshSize {10} = 0.134934;
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
Save "../geo_unrolled/cad_230.geo_unrolled";
