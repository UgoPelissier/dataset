//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.577560, -3.838958, 0.000000, 38.343796, 8.302201, 1.000000};
//+
MeshSize {1} = 0.637654;
//+
MeshSize {2} = 0.637654;
//+
MeshSize {3} = 0.637654;
//+
MeshSize {4} = 0.637654;
//+
MeshSize {5} = 0.637654;
//+
MeshSize {6} = 0.637654;
//+
MeshSize {7} = 3.914209;
//+
MeshSize {8} = 3.914209;
//+
Cylinder(2) = {7.494137, -1.854300, 0.000000, 0.000000, 0.000000, 1.000000, 0.819150, 2*Pi};
//+
MeshSize {9} = 0.081915;
//+
MeshSize {10} = 0.081915;
//+
Cylinder(3) = {20.007938, -2.436054, 0.000000, 0.000000, 0.000000, 1.000000, 0.850318, 2*Pi};
//+
MeshSize {11} = 0.085032;
//+
MeshSize {12} = 0.085032;
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
