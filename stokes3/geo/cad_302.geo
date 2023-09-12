//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.657921, -3.544102, 0.000000, 36.355219, 8.139846, 1.000000};
//+
MeshSize {1} = 1.306287;
//+
MeshSize {2} = 1.306287;
//+
MeshSize {3} = 3.723623;
//+
MeshSize {4} = 3.723623;
//+
MeshSize {5} = 1.306287;
//+
MeshSize {6} = 1.306287;
//+
MeshSize {7} = 3.723623;
//+
MeshSize {8} = 3.723623;
//+
Cylinder(2) = {13.559913, 0.862446, 0.000000, 0.000000, 0.000000, 1.000000, 0.570874, 2*Pi};
//+
MeshSize {9} = 0.057087;
//+
MeshSize {10} = 0.057087;
//+
Cylinder(3) = {15.395734, -1.065761, 0.000000, 0.000000, 0.000000, 1.000000, 1.208434, 2*Pi};
//+
MeshSize {11} = 0.120843;
//+
MeshSize {12} = 0.120843;
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
Save "../geo_unrolled/cad_302.geo_unrolled";
