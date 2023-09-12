//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.845373, -4.100064, 0.000000, 36.780683, 8.935250, 1.000000};
//+
MeshSize {1} = 3.789037;
//+
MeshSize {2} = 3.789037;
//+
MeshSize {3} = 0.739173;
//+
MeshSize {4} = 0.739173;
//+
MeshSize {5} = 1.059984;
//+
MeshSize {6} = 1.059984;
//+
MeshSize {7} = 0.739173;
//+
MeshSize {8} = 0.739173;
//+
Cylinder(2) = {30.794175, 1.014806, 0.000000, 0.000000, 0.000000, 1.000000, 1.142699, 2*Pi};
//+
MeshSize {9} = 0.114270;
//+
MeshSize {10} = 0.114270;
//+
Cylinder(3) = {11.625875, -1.431207, 0.000000, 0.000000, 0.000000, 1.000000, 0.506106, 2*Pi};
//+
MeshSize {11} = 0.050611;
//+
MeshSize {12} = 0.050611;
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
Save "../geo_unrolled/cad_071.geo_unrolled";
