//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.729924, -3.631638, 0.000000, 36.257629, 7.545971, 1.000000};
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
Cylinder(2) = {21.563926, 1.233980, 0.000000, 0.000000, 0.000000, 1.000000, 0.543482, 2*Pi};
//+
MeshSize {9} = 0.054348;
//+
MeshSize {10} = 0.054348;
//+
Cylinder(3) = {6.299707, -1.629828, 0.000000, 0.000000, 0.000000, 1.000000, 1.289188, 2*Pi};
//+
MeshSize {11} = 0.128919;
//+
MeshSize {12} = 0.128919;
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
Save "../geo_unrolled/cad_316.geo_unrolled";
