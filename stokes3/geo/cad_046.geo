//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.942676, -3.350080, 0.000000, 33.995276, 7.701105, 1.000000};
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
Cylinder(2) = {29.206682, 0.579116, 0.000000, 0.000000, 0.000000, 1.000000, 1.450786, 2*Pi};
//+
MeshSize {9} = 0.145079;
//+
MeshSize {10} = 0.145079;
//+
Cylinder(3) = {20.450218, 1.037991, 0.000000, 0.000000, 0.000000, 1.000000, 0.991726, 2*Pi};
//+
MeshSize {11} = 0.099173;
//+
MeshSize {12} = 0.099173;
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
Save "../geo_unrolled/cad_046.geo_unrolled";
