//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.167020, -3.289691, 0.000000, 32.815002, 8.227069, 1.000000};
//+
MeshSize {1} = 3.323755;
//+
MeshSize {2} = 3.323755;
//+
MeshSize {3} = 3.323755;
//+
MeshSize {4} = 3.323755;
//+
MeshSize {5} = 0.902357;
//+
MeshSize {6} = 0.902357;
//+
MeshSize {7} = 0.902357;
//+
MeshSize {8} = 0.320046;
//+
Cylinder(2) = {24.005369, 0.792842, 0.000000, 0.000000, 0.000000, 1.000000, 0.837835, 2*Pi};
//+
MeshSize {9} = 0.083784;
//+
MeshSize {10} = 0.083784;
//+
Cylinder(3) = {29.729460, -1.157953, 0.000000, 0.000000, 0.000000, 1.000000, 0.688426, 2*Pi};
//+
MeshSize {11} = 0.068843;
//+
MeshSize {12} = 0.068843;
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
