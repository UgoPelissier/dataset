//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.073709, -3.302634, 0.000000, 32.875377, 8.296792, 1.000000};
//+
MeshSize {1} = 1.231516;
//+
MeshSize {2} = 1.231516;
//+
MeshSize {3} = 1.258526;
//+
MeshSize {4} = 1.258526;
//+
MeshSize {5} = 1.231516;
//+
MeshSize {6} = 1.231516;
//+
MeshSize {7} = 3.320921;
//+
MeshSize {8} = 3.320921;
//+
Cylinder(2) = {12.370994, 1.924732, 0.000000, 0.000000, 0.000000, 1.000000, 1.047046, 2*Pi};
//+
MeshSize {9} = 0.104705;
//+
MeshSize {10} = 0.104705;
//+
Cylinder(3) = {20.219033, -0.143229, 0.000000, 0.000000, 0.000000, 1.000000, 0.530993, 2*Pi};
//+
MeshSize {11} = 0.053099;
//+
MeshSize {12} = 0.053099;
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
Save "../geo_unrolled/cad_199.geo_unrolled";
