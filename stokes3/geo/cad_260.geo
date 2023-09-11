//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.588590, -3.280238, 0.000000, 32.861084, 7.561407, 1.000000};
//+
MeshSize {1} = 0.246957;
//+
MeshSize {2} = 0.246957;
//+
MeshSize {3} = 3.366266;
//+
MeshSize {4} = 3.366266;
//+
MeshSize {5} = 0.246957;
//+
MeshSize {6} = 0.246957;
//+
MeshSize {7} = 3.366266;
//+
MeshSize {8} = 3.366266;
//+
Cylinder(2) = {3.497142, -0.635344, 0.000000, 0.000000, 0.000000, 1.000000, 1.461728, 2*Pi};
//+
MeshSize {9} = 0.146173;
//+
MeshSize {10} = 0.146173;
//+
Cylinder(3) = {10.432630, -0.337748, 0.000000, 0.000000, 0.000000, 1.000000, 0.706867, 2*Pi};
//+
MeshSize {11} = 0.070687;
//+
MeshSize {12} = 0.070687;
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
Save "../geo_unrolled/cad_260.geo_unrolled";
