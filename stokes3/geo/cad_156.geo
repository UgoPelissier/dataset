//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.231856, -4.145551, 0.000000, 31.612662, 9.101197, 1.000000};
//+
MeshSize {1} = 0.695158;
//+
MeshSize {2} = 0.695158;
//+
MeshSize {3} = 0.643034;
//+
MeshSize {4} = 0.643034;
//+
MeshSize {5} = 1.602482;
//+
MeshSize {6} = 1.602482;
//+
MeshSize {7} = 3.216802;
//+
MeshSize {8} = 3.216802;
//+
Cylinder(2) = {6.283701, 0.839159, 0.000000, 0.000000, 0.000000, 1.000000, 0.888836, 2*Pi};
//+
MeshSize {9} = 0.088884;
//+
MeshSize {10} = 0.088884;
//+
Cylinder(3) = {14.570473, -2.162869, 0.000000, 0.000000, 0.000000, 1.000000, 1.362637, 2*Pi};
//+
MeshSize {11} = 0.136264;
//+
MeshSize {12} = 0.136264;
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
Save "../geo_unrolled/cad_156.geo_unrolled";
