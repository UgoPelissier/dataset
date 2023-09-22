//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.113211, -4.664897, 0.000000, 37.637919, 9.558207, 1.000000};
//+
MeshSize {1} = 1.940185;
//+
MeshSize {2} = 1.940185;
//+
MeshSize {3} = 1.296162;
//+
MeshSize {4} = 1.296162;
//+
MeshSize {5} = 0.842282;
//+
MeshSize {6} = 0.842282;
//+
MeshSize {7} = 0.820167;
//+
MeshSize {8} = 0.820167;
//+
Cylinder(2) = {13.849447, 3.083582, 0.000000, 0.000000, 0.000000, 1.000000, 0.541611, 2*Pi};
//+
MeshSize {9} = 0.054161;
//+
MeshSize {10} = 0.054161;
//+
Cylinder(3) = {27.142317, 0.443054, 0.000000, 0.000000, 0.000000, 1.000000, 1.489776, 2*Pi};
//+
MeshSize {11} = 0.148978;
//+
MeshSize {12} = 0.148978;
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
Save "../geo_unrolled/cad_161.geo_unrolled";
