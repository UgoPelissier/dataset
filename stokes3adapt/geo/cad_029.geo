//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.194435, -3.358626, 0.000000, 34.749336, 8.109961, 1.000000};
//+
MeshSize {1} = 4.098087;
//+
MeshSize {2} = 4.098087;
//+
MeshSize {3} = 3.453185;
//+
MeshSize {4} = 3.453185;
//+
MeshSize {5} = 0.460361;
//+
MeshSize {6} = 0.460361;
//+
MeshSize {7} = 0.427873;
//+
MeshSize {8} = 0.427873;
//+
Cylinder(2) = {15.950498, 2.444477, 0.000000, 0.000000, 0.000000, 1.000000, 1.167578, 2*Pi};
//+
MeshSize {9} = 0.116758;
//+
MeshSize {10} = 0.116758;
//+
Cylinder(3) = {31.149784, 0.913606, 0.000000, 0.000000, 0.000000, 1.000000, 1.219274, 2*Pi};
//+
MeshSize {11} = 0.121927;
//+
MeshSize {12} = 0.121927;
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
Save "../geo_unrolled/cad_029.geo_unrolled";
