//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.957318, -3.652588, 0.000000, 34.600366, 9.296021, 1.000000};
//+
MeshSize {1} = 3.586018;
//+
MeshSize {2} = 3.586018;
//+
MeshSize {3} = 3.586018;
//+
MeshSize {4} = 3.586018;
//+
MeshSize {5} = 1.425245;
//+
MeshSize {6} = 1.425245;
//+
MeshSize {7} = 1.461007;
//+
MeshSize {8} = 1.461007;
//+
Cylinder(2) = {20.594309, 0.392247, 0.000000, 0.000000, 0.000000, 1.000000, 1.247976, 2*Pi};
//+
MeshSize {9} = 0.124798;
//+
MeshSize {10} = 0.124798;
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
Save "../geo_unrolled/cad_025.geo_unrolled";
