//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.751138, -3.326117, 0.000000, 31.495269, 7.997825, 1.000000};
//+
MeshSize {1} = 0.315206;
//+
MeshSize {2} = 0.315206;
//+
MeshSize {3} = 0.523943;
//+
MeshSize {4} = 0.523943;
//+
MeshSize {5} = 3.249342;
//+
MeshSize {6} = 3.249342;
//+
MeshSize {7} = 3.249342;
//+
MeshSize {8} = 3.249342;
//+
Cylinder(2) = {3.437057, -0.598668, 0.000000, 0.000000, 0.000000, 1.000000, 0.675887, 2*Pi};
//+
MeshSize {9} = 0.067589;
//+
MeshSize {10} = 0.067589;
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
Save "../geo_unrolled/cad_045.geo_unrolled";
