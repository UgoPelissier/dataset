//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.579574, -3.386528, 0.000000, 30.321760, 8.237776, 1.000000};
//+
MeshSize {1} = 3.117463;
//+
MeshSize {2} = 3.117463;
//+
MeshSize {3} = 3.117463;
//+
MeshSize {4} = 3.117463;
//+
MeshSize {5} = 0.500425;
//+
MeshSize {6} = 0.500425;
//+
MeshSize {7} = 0.266049;
//+
MeshSize {8} = 0.266049;
//+
Cylinder(2) = {28.227966, 2.722359, 0.000000, 0.000000, 0.000000, 1.000000, 0.756970, 2*Pi};
//+
MeshSize {9} = 0.075697;
//+
MeshSize {10} = 0.075697;
//+
Cylinder(3) = {25.484015, -0.149534, 0.000000, 0.000000, 0.000000, 1.000000, 1.306488, 2*Pi};
//+
MeshSize {11} = 0.130649;
//+
MeshSize {12} = 0.130649;
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
Save "../geo_unrolled/cad_060.geo_unrolled";
