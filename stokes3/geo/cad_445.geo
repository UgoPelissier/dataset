//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.317317, -3.365629, 0.000000, 31.100640, 7.792105, 1.000000};
//+
MeshSize {1} = 3.165860;
//+
MeshSize {2} = 3.165860;
//+
MeshSize {3} = 0.598944;
//+
MeshSize {4} = 0.598944;
//+
MeshSize {5} = 3.165860;
//+
MeshSize {6} = 3.165860;
//+
MeshSize {7} = 0.598944;
//+
MeshSize {8} = 0.598944;
//+
Cylinder(2) = {26.227838, 1.931066, 0.000000, 0.000000, 0.000000, 1.000000, 1.426237, 2*Pi};
//+
MeshSize {9} = 0.142624;
//+
MeshSize {10} = 0.142624;
//+
Cylinder(3) = {23.926783, -1.840823, 0.000000, 0.000000, 0.000000, 1.000000, 0.813010, 2*Pi};
//+
MeshSize {11} = 0.081301;
//+
MeshSize {12} = 0.081301;
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
Save "../geo_unrolled/cad_445.geo_unrolled";
