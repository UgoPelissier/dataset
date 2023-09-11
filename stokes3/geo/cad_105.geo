//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.530852, -3.157726, 0.000000, 37.773874, 8.142425, 1.000000};
//+
MeshSize {1} = 3.852047;
//+
MeshSize {2} = 3.852047;
//+
MeshSize {3} = 3.852047;
//+
MeshSize {4} = 3.852047;
//+
MeshSize {5} = 0.605243;
//+
MeshSize {6} = 0.605243;
//+
MeshSize {7} = 0.714553;
//+
MeshSize {8} = 0.714553;
//+
Cylinder(2) = {31.589517, -0.147803, 0.000000, 0.000000, 0.000000, 1.000000, 1.306488, 2*Pi};
//+
MeshSize {9} = 0.130649;
//+
MeshSize {10} = 0.130649;
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
Save "../geo_unrolled/cad_105.geo_unrolled";
