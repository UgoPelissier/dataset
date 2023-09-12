//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.359260, -4.110035, 0.000000, 34.768906, 8.743193, 1.000000};
//+
MeshSize {1} = 1.420506;
//+
MeshSize {2} = 1.420506;
//+
MeshSize {3} = 3.539914;
//+
MeshSize {4} = 3.539914;
//+
MeshSize {5} = 0.374171;
//+
MeshSize {6} = 0.374171;
//+
MeshSize {7} = 3.539914;
//+
MeshSize {8} = 3.539914;
//+
Cylinder(2) = {14.540607, 0.546666, 0.000000, 0.000000, 0.000000, 1.000000, 0.721274, 2*Pi};
//+
MeshSize {9} = 0.072127;
//+
MeshSize {10} = 0.072127;
//+
Cylinder(3) = {5.125997, -2.091598, 0.000000, 0.000000, 0.000000, 1.000000, 1.434758, 2*Pi};
//+
MeshSize {11} = 0.143476;
//+
MeshSize {12} = 0.143476;
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
Save "../geo_unrolled/cad_135.geo_unrolled";
