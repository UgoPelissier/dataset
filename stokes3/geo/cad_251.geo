//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.132507, -4.256033, 0.000000, 34.355930, 8.886850, 1.000000};
//+
MeshSize {1} = 0.515539;
//+
MeshSize {2} = 0.515539;
//+
MeshSize {3} = 3.477350;
//+
MeshSize {4} = 3.477350;
//+
MeshSize {5} = 0.515539;
//+
MeshSize {6} = 0.515539;
//+
MeshSize {7} = 3.477350;
//+
MeshSize {8} = 3.477350;
//+
Cylinder(2) = {3.209641, 0.871301, 0.000000, 0.000000, 0.000000, 1.000000, 0.824430, 2*Pi};
//+
MeshSize {9} = 0.082443;
//+
MeshSize {10} = 0.082443;
//+
Cylinder(3) = {13.286254, -1.849821, 0.000000, 0.000000, 0.000000, 1.000000, 0.887800, 2*Pi};
//+
MeshSize {11} = 0.088780;
//+
MeshSize {12} = 0.088780;
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
Save "../geo_unrolled/cad_251.geo_unrolled";
