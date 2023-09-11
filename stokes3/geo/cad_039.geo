//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.305191, -2.984235, 0.000000, 31.970764, 7.559161, 1.000000};
//+
MeshSize {1} = 0.282080;
//+
MeshSize {2} = 0.282080;
//+
MeshSize {3} = 0.476309;
//+
MeshSize {4} = 0.476309;
//+
MeshSize {5} = 3.249650;
//+
MeshSize {6} = 3.249650;
//+
MeshSize {7} = 3.249650;
//+
MeshSize {8} = 3.249650;
//+
Cylinder(2) = {3.498796, -0.494643, 0.000000, 0.000000, 0.000000, 1.000000, 1.228545, 2*Pi};
//+
MeshSize {9} = 0.122855;
//+
MeshSize {10} = 0.122855;
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
Save "../geo_unrolled/cad_039.geo_unrolled";
