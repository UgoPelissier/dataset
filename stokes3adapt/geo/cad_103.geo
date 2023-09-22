//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.780263, -4.318037, 0.000000, 31.039368, 9.915662, 1.000000};
//+
MeshSize {1} = 0.746285;
//+
MeshSize {2} = 0.746285;
//+
MeshSize {3} = 0.653245;
//+
MeshSize {4} = 0.653245;
//+
MeshSize {5} = 2.533747;
//+
MeshSize {6} = 2.533747;
//+
MeshSize {7} = 1.893652;
//+
MeshSize {8} = 1.893652;
//+
Cylinder(2) = {13.765754, 4.072484, 0.000000, 0.000000, 0.000000, 1.000000, 0.555413, 2*Pi};
//+
MeshSize {9} = 0.055541;
//+
MeshSize {10} = 0.055541;
//+
Cylinder(3) = {10.266946, 2.075667, 0.000000, 0.000000, 0.000000, 1.000000, 0.846023, 2*Pi};
//+
MeshSize {11} = 0.084602;
//+
MeshSize {12} = 0.084602;
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
Save "../geo_unrolled/cad_103.geo_unrolled";
