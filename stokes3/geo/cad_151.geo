//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.137565, -3.799261, 0.000000, 38.306719, 7.752852, 1.000000};
//+
MeshSize {1} = 0.500349;
//+
MeshSize {2} = 0.500349;
//+
MeshSize {3} = 0.627439;
//+
MeshSize {4} = 0.627439;
//+
MeshSize {5} = 3.863922;
//+
MeshSize {6} = 3.863922;
//+
MeshSize {7} = 3.863922;
//+
MeshSize {8} = 3.863922;
//+
Cylinder(2) = {5.038087, -0.955773, 0.000000, 0.000000, 0.000000, 1.000000, 0.662247, 2*Pi};
//+
MeshSize {9} = 0.066225;
//+
MeshSize {10} = 0.066225;
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
Save "../geo_unrolled/cad_151.geo_unrolled";
