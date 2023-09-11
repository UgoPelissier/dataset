//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.249530, -4.752375, 0.000000, 37.551633, 9.710337, 1.000000};
//+
MeshSize {1} = 1.557711;
//+
MeshSize {2} = 1.557711;
//+
MeshSize {3} = 1.492456;
//+
MeshSize {4} = 1.492456;
//+
MeshSize {5} = 3.811169;
//+
MeshSize {6} = 3.811169;
//+
MeshSize {7} = 3.811169;
//+
MeshSize {8} = 3.811169;
//+
Cylinder(2) = {15.361538, 1.171664, 0.000000, 0.000000, 0.000000, 1.000000, 0.654553, 2*Pi};
//+
MeshSize {9} = 0.065455;
//+
MeshSize {10} = 0.065455;
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
Save "../geo_unrolled/cad_036.geo_unrolled";
