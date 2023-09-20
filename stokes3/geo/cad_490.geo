//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.357966, -4.444101, 0.000000, 37.321693, 9.242575, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {16.751534, -2.573865, 0.000000, 0.000000, 0.000000, 1.000000, 0.519782, 2*Pi};
//+
MeshSize {9} = 0.051978;
//+
MeshSize {10} = 0.051978;
//+
Cylinder(3) = {3.389908, 1.048503, 0.000000, 0.000000, 0.000000, 1.000000, 0.803179, 2*Pi};
//+
MeshSize {11} = 0.080318;
//+
MeshSize {12} = 0.080318;
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
Save "../geo_unrolled/cad_490.geo_unrolled";
