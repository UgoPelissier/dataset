//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.603253, -4.074256, 0.000000, 31.590964, 8.589590, 1.000000};
//+
MeshSize {1} = 0.568180;
//+
MeshSize {2} = 0.568180;
//+
MeshSize {3} = 0.440223;
//+
MeshSize {4} = 0.440223;
//+
MeshSize {5} = 3.247942;
//+
MeshSize {6} = 3.247942;
//+
MeshSize {7} = 3.247942;
//+
MeshSize {8} = 3.247942;
//+
Cylinder(2) = {4.108877, 1.050137, 0.000000, 0.000000, 0.000000, 1.000000, 0.526966, 2*Pi};
//+
MeshSize {9} = 0.052697;
//+
MeshSize {10} = 0.052697;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_054.geo_unrolled";
