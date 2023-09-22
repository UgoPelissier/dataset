//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.922088, -2.814458, 0.000000, 33.848582, 7.522831, 1.000000};
//+
MeshSize {1} = 0.916599;
//+
MeshSize {2} = 0.916599;
//+
MeshSize {3} = 1.012787;
//+
MeshSize {4} = 1.012787;
//+
MeshSize {5} = 1.034122;
//+
MeshSize {6} = 1.034122;
//+
MeshSize {7} = 1.217879;
//+
MeshSize {8} = 1.217879;
//+
Cylinder(2) = {14.966525, -1.557808, 0.000000, 0.000000, 0.000000, 1.000000, 0.731215, 2*Pi};
//+
MeshSize {9} = 0.073122;
//+
MeshSize {10} = 0.073122;
//+
Cylinder(3) = {19.490851, -0.791762, 0.000000, 0.000000, 0.000000, 1.000000, 0.663269, 2*Pi};
//+
MeshSize {11} = 0.066327;
//+
MeshSize {12} = 0.066327;
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
Save "../geo_unrolled/cad_291.geo_unrolled";
