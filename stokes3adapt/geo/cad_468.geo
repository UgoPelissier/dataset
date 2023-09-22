//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.029763, -4.612224, 0.000000, 30.069724, 9.515617, 1.000000};
//+
MeshSize {1} = 1.057399;
//+
MeshSize {2} = 1.057399;
//+
MeshSize {3} = 1.487338;
//+
MeshSize {4} = 1.487338;
//+
MeshSize {5} = 1.032021;
//+
MeshSize {6} = 1.032021;
//+
MeshSize {7} = 0.829176;
//+
MeshSize {8} = 0.829176;
//+
Cylinder(2) = {22.851301, 1.524175, 0.000000, 0.000000, 0.000000, 1.000000, 1.141466, 2*Pi};
//+
MeshSize {9} = 0.114147;
//+
MeshSize {10} = 0.114147;
//+
Cylinder(3) = {8.901154, -0.932504, 0.000000, 0.000000, 0.000000, 1.000000, 1.180871, 2*Pi};
//+
MeshSize {11} = 0.118087;
//+
MeshSize {12} = 0.118087;
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
Save "../geo_unrolled/cad_468.geo_unrolled";
