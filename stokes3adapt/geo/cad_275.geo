//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.348095, -3.544667, 0.000000, 32.416983, 9.015909, 1.000000};
//+
MeshSize {1} = 0.523834;
//+
MeshSize {2} = 0.523834;
//+
MeshSize {3} = 0.336286;
//+
MeshSize {4} = 0.336286;
//+
MeshSize {5} = 3.713138;
//+
MeshSize {6} = 3.713138;
//+
MeshSize {7} = 4.030086;
//+
MeshSize {8} = 4.030086;
//+
Cylinder(2) = {6.373633, 3.874261, 0.000000, 0.000000, 0.000000, 1.000000, 1.074907, 2*Pi};
//+
MeshSize {9} = 0.107491;
//+
MeshSize {10} = 0.107491;
//+
Cylinder(3) = {8.555208, -0.837266, 0.000000, 0.000000, 0.000000, 1.000000, 0.606465, 2*Pi};
//+
MeshSize {11} = 0.060646;
//+
MeshSize {12} = 0.060646;
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
Save "../geo_unrolled/cad_275.geo_unrolled";
