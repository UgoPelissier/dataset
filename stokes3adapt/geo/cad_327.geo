//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.042416, -3.248678, 0.000000, 35.144611, 8.489028, 1.000000};
//+
MeshSize {1} = 1.842220;
//+
MeshSize {2} = 1.842220;
//+
MeshSize {3} = 2.160984;
//+
MeshSize {4} = 2.160984;
//+
MeshSize {5} = 0.723826;
//+
MeshSize {6} = 0.723826;
//+
MeshSize {7} = 0.757439;
//+
MeshSize {8} = 0.757439;
//+
Cylinder(2) = {25.868449, 0.489825, 0.000000, 0.000000, 0.000000, 1.000000, 1.016127, 2*Pi};
//+
MeshSize {9} = 0.101613;
//+
MeshSize {10} = 0.101613;
//+
Cylinder(3) = {16.233435, -0.658221, 0.000000, 0.000000, 0.000000, 1.000000, 1.113134, 2*Pi};
//+
MeshSize {11} = 0.111313;
//+
MeshSize {12} = 0.111313;
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
Save "../geo_unrolled/cad_327.geo_unrolled";
