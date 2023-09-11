//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.698676, -3.092424, 0.000000, 37.766005, 7.644765, 1.000000};
//+
l = [0.2730020091519609, 0.2730020091519609, 0.2730020091519609, 0.2730020091519609, 0.2730020091519609, 0.2730020091519609, 3.8654136952218416, 3.8654136952218416, 1.7864625950669693, 1.7864625950669693, 1.7864625950669693, 3.8654136952218416, 3.8654136952218416, 1.728155812541295, 1.728155812541295, 1.728155812541295, 0.47374956651276917, 0.47374956651276917, 0.47374956651276917, 0.47374956651276917, 0.47374956651276917, 0.47374956651276917];
//+
MeshSize {1} = 0.273002;
//+
MeshSize {2} = 0.273002;
//+
MeshSize {3} = 0.273002;
//+
MeshSize {4} = 0.273002;
//+
MeshSize {5} = 0.273002;
//+
MeshSize {6} = 0.273002;
//+
MeshSize {7} = 3.865414;
//+
MeshSize {8} = 3.865414;
//+
Cylinder(2) = {3.316148, -0.500858, 0.000000, 0.000000, 0.000000, 1.000000, 0.953372, 2*Pi};
//+
c0 = 0.09533718422971427;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {20.117235, 2.163370, 0.000000, 0.000000, 0.000000, 1.000000, 1.220766, 2*Pi};
//+
c1 = 0.1220765518093459;
//+
MeshSize {11, 12} = c1;
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
