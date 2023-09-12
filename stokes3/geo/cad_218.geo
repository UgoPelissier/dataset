//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.583575, -3.917482, 0.000000, 30.128583, 9.723565, 1.000000};
//+
MeshSize {1} = 3.109459;
//+
MeshSize {2} = 3.109459;
//+
MeshSize {3} = 3.109459;
//+
MeshSize {4} = 3.109459;
//+
MeshSize {5} = 0.965682;
//+
MeshSize {6} = 0.965682;
//+
MeshSize {7} = 3.109459;
//+
MeshSize {8} = 3.109459;
//+
Cylinder(2) = {15.370740, 3.573388, 0.000000, 0.000000, 0.000000, 1.000000, 0.881669, 2*Pi};
//+
MeshSize {9} = 0.088167;
//+
MeshSize {10} = 0.088167;
//+
Cylinder(3) = {9.716819, 2.097066, 0.000000, 0.000000, 0.000000, 1.000000, 1.278941, 2*Pi};
//+
MeshSize {11} = 0.127894;
//+
MeshSize {12} = 0.127894;
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
Save "../geo_unrolled/cad_218.geo_unrolled";
