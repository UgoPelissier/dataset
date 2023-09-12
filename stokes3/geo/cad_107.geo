//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.956650, -4.123294, 0.000000, 37.090231, 9.212477, 1.000000};
//+
MeshSize {1} = 1.555902;
//+
MeshSize {2} = 1.555902;
//+
MeshSize {3} = 1.393769;
//+
MeshSize {4} = 1.393769;
//+
MeshSize {5} = 1.555902;
//+
MeshSize {6} = 1.555902;
//+
MeshSize {7} = 3.832470;
//+
MeshSize {8} = 3.832470;
//+
Cylinder(2) = {16.725618, -0.145086, 0.000000, 0.000000, 0.000000, 1.000000, 0.704023, 2*Pi};
//+
MeshSize {9} = 0.070402;
//+
MeshSize {10} = 0.070402;
//+
Cylinder(3) = {23.081531, -1.726579, 0.000000, 0.000000, 0.000000, 1.000000, 1.218363, 2*Pi};
//+
MeshSize {11} = 0.121836;
//+
MeshSize {12} = 0.121836;
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
Save "../geo_unrolled/cad_107.geo_unrolled";
