//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.915126, -3.673748, 0.000000, 36.840012, 8.451654, 1.000000};
//+
MeshSize {1} = 1.863113;
//+
MeshSize {2} = 1.863113;
//+
MeshSize {3} = 3.799090;
//+
MeshSize {4} = 3.799090;
//+
MeshSize {5} = 1.701994;
//+
MeshSize {6} = 1.701994;
//+
MeshSize {7} = 1.782929;
//+
MeshSize {8} = 1.782929;
//+
Cylinder(2) = {20.148035, -1.189490, 0.000000, 0.000000, 0.000000, 1.000000, 0.761562, 2*Pi};
//+
MeshSize {9} = 0.076156;
//+
MeshSize {10} = 0.076156;
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
Save "../geo_unrolled/cad_235.geo_unrolled";
